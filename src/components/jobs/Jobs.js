import React from "react"
import indeedJobs from "./json/indeed-node-remote.json"
import stackoJobs from "./json/stackoverflow-remote.json"
import { find_mentions } from "./lib/str-jsx.js"
import Links from "./Links.js"
import Home from "./Home.js"
import Search from "./Search.js"
import { JobsStyled } from "./Jobs.styled.js"
import Header from "src/components/jobs/Header.js"
import keydown from "react-keydown"

// aggregate sources into list
let jobsDict = {}
for (let list of [stackoJobs, indeedJobs]) {
  for (let obj of list) {
    if (!obj) continue
    // handle stackoverflow rss feed
    if (obj.pubDate) {
      let job = obj
      if (!job || !job.description) continue
      job = fixStackoverflow(job)
      // unique ?
      job.uid = job.title + (job.employer || job.company)
      if (jobsDict[job.uid]) continue
      // add
      jobsDict[job.uid] = job
      continue
    }
    // handle individual job
    if (obj.job && obj.job.body) {
      if (!obj.job.url && obj.url) {
        obj.job.url = obj.url
      }
      let job = fixIndeed(obj.job)
      // unique ?
      job.uid = job.title + (job.employer || job.company)
      if (jobsDict[job.uid]) continue
      // add
      jobsDict[job.uid] = job
      continue
    }
    // // handle list of jobs
    // if (obj.jobs && typeof obj.jobs === "object") {
    //   for (let uid in obj.jobs) {
    //     let job = obj.jobs[uid]
    //     if (!job || !job.body) continue
    //     job = fixStackoverflow(obj.job)
    //     // unique ?
    //     let uid = job.title + (job.employer || job.company)
    //     if (jobsDict[uid]) continue
    //     // add
    //     jobsDict[uid] = job
    //     continue
    //   }
    // }
  }
}

// temporary logic, move to web-crawler:
function fixIndeed(job) {
  let company = ""
  let company_i = job.meta.indexOf(" - ")
  if (company_i !== -1) {
    company = job.meta.substring(0, company_i).trim()
  }
  job.employer = company
  job.meta = job.meta.replace(
    /If you require alternative methods of application or screening, you must approach the employer directly to request this as Indeed is not responsible for the employer's application process./gi,
    ""
  )
  job.meta = job.meta.replace(/Report job|original job/gi, "")
  job.meta = job.meta.replace(/[-\s]+$/gi, "")
  job.body += "\n<b> Meta: " + job.meta + "</b><br />"
  job.body += "\n<b> Company: " + job.company + "</b><br />"
  job.body += "\n<b> Employer: " + job.employer + "</b><br />"
  job.source = "Indeed.com"
  return job
}
function fixStackoverflow(job) {
  job.employer = (job.author.name || {}).__text
  job.body = job.description
  job.title = job.title.replace("(allows remote)", "")
  {
    let title_par = job.title.indexOf("(")
    if (title_par >= 20) {
      job.subtitle = job.title.substr(title_par)
      job.title = job.title.substring(0, title_par)
      // job.body = "<h4>" + job.subtitle + "</h4>" + job.body
    }
  }
  {
    let title_par = job.title.indexOf("|")
    if (title_par >= 20) {
      job.subtitle = job.title.substr(title_par + 1)
      job.title = job.title.substring(0, title_par)
      // job.body = "<h4>" + job.subtitle + "</h4>" + job.body
    }
  }
  {
    let title_par = job.title.indexOf(" - ")
    if (title_par >= 20) {
      job.subtitle = job.title.substr(title_par + 3)
      job.title = job.title.substring(0, title_par)
      // job.body = "<h4>" + job.subtitle + "</h4>" + job.body
    }
  }
  job.body = job.body.replace("()", "")
  job.url = job.link
  job.meta = (job.location || {}).__text + " - " + (job.category || []).toString()
  delete job.link
  delete job.description
  delete job.author
  delete job.guid
  delete job.location
  delete job.category
  job.source = "Stackoverflow"
  return job
}

export default class Jobs extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      reExclude:
        "no remote|remote at first|remote option|work from home at least|remote at first|work from home perks|remotely on occasion",
      reHighlight: "cool|labs| fun[^\\w]|remote|wfh|telecommute|remotely|work from|temporary|temporarily",
      jobSelected: {},
      jobsFound: {},
      jobsFoundLength: 0,
      noRecruiters: true
    }
  }
  componentDidMount() {
    this.findMentions(this.state, false)
    // WHY it doesn't filter out all reExclude terms the first time? IDK. Hack fix:
    // setTimeout(() => {
    //   this.findMentions(this.state, false)
    // })
    /*
     * USER interaction: key press
     */
    if (typeof window === "object") {
      window.document.addEventListener("keydown", this.handleKeyDown)
    }
  }
  componentWillUnmount() {
    if (typeof window === "object") {
      window.document.removeEventListener("keydown", this.handleKeyDown)
    }
  }

  /*
   * KEY PRESS - prev/next job
   */
  handleKeyDown = (e) => {
    if (e.key === "ArrowDown") {
      this.nextJob()
    }
    if (e.key === "ArrowUp") {
      this.prevJob()
    }
  }
  nextJob = () => {
    // no job selected, so select the first in list
    if (!this.state.jobSelected.body) {
      for (let uid in this.state.jobsFound) {
        if (this.state.jobsFound[uid]) {
          this.setState({ jobSelected: this.state.jobsFound[uid] })
          break
        }
      }
      return
    }
    // select next job
    if (!this.state.jobSelected.next_job) return
    this.setState({ jobSelected: this.state.jobSelected.next_job })
  }
  prevJob = () => {
    // select previous job
    if (!this.state.jobSelected.body) return
    if (!this.state.jobSelected.prev_job) return
    this.setState({ jobSelected: this.state.jobSelected.prev_job })
  }

  /*
   * USER INTERACTIONS
   */
  findMentions = ({ reHighlight = "", reExclude = "" }, selectFirst = true) => {
    // set search string, reset results
    this.setState({ reExclude, reHighlight, jobSelected: {}, jobsFoundLength: 0 }, () => {
      let jobsFoundLength = 0
      let jobsFound = {}
      let jobSelected = {}
      /*
       * iterate ORIGINAL UNCHANGED LIST {Array}
       */
      let job_prev = {}
      let job_i = 0
      for (let uid in jobsDict) {
        let job = { ...jobsDict[uid] }
        // hide recruiters
        if (this.state.noRecruiters) {
          if (!job.employer) continue
        }
        // exclude words
        if (reExclude) {
          let matches = job.body.match(new RegExp("(" + reExclude + ")", "uim"))
          if (matches) {
            continue
          }
        }
        // find mentions
        if (reHighlight) {
          // // highlight title:
          // let highlightTitle = find_mentions(reHighlight, job.title)
          // if (highlightTitle && highlightTitle[1]) {
          //   job.title = highlightTitle[1]
          // }
          let mentionsTuple = find_mentions(reHighlight, job.body)
          if (!mentionsTuple || !mentionsTuple.length) continue
          let mentionsList = mentionsTuple[0]
          if (!mentionsList.length) continue
          job.body = mentionsTuple[1]
          job.mentions = mentionsList
          // auto-select first found result
          if (selectFirst && !jobSelected.body) {
            jobSelected = job
          }
          // save, with unique key
          jobsFound[job.title + job.employer] = job
          jobsFoundLength++
        } else {
          // save, with unique key
          jobsFound[job.title + job.employer] = job
          jobsFoundLength++
        }
        // remember job
        if (job_prev) {
          job.prev_job = job_prev
          job_prev.next_job = job
        }
        // next job
        job_i++
        job_prev = job
      }
      /*
       * output FILTERED EDITED DICTIONARY {Object}
       */
      this.setState({ jobsFoundLength, jobSelected })
      this.set_jobsFound(jobsFound)
    })
  }
  set_jobsFound = (jobsFound) => {
    // first, clear jobsFound, to force all jobs to update
    // because they are configured to update only when selected/deselected
    this.setState({ jobsFound: {} }, () => {
      // set new data
      setTimeout(() => {
        this.setState({ jobsFound })
      })
    })
  }

  /*
   * VIEW
   */
  render() {
    return (
      <JobsStyled>
        <Header />
        <div
          className="middle"
          onClick={(event) => {
            console.log("clicked")
          }}
        >
          <div className="side">
            {/*
             * SEARCH - highlight word
             */}
            <Search
              reExclude={this.state.reExclude}
              reHighlight={this.state.reHighlight}
              onChange={(state) => {
                this.findMentions(state)
              }}
              jobsFound={this.state.jobsFound}
              jobsFoundLength={this.state.jobsFoundLength}
            />
            {/*
             * NAVIGATION - jobs links
             */}
            <Links
              className="jobs"
              jobsFound={this.state.jobsFound}
              jobSelected={this.state.jobSelected}
              reHighlight={this.state.reHighlight}
              onClick={(job) => {
                this.setState({ jobSelected: job })
              }}
            />
          </div>
          <div className="main">
            <Home jobSelected={this.state.jobSelected} reHighlight={this.state.reHighlight} />
          </div>
        </div>
      </JobsStyled>
    )
  }
}

// exclude certain jobs
// let pay_i = job.body.indexOf("- $")
// console.log("pay_i", pay_i)
// if (pay_i !== -1) {
//   let pay = job.body.substr(pay_i, 8)
//   console.log("pay", job.title.substr(0, 30), pay)
// }
