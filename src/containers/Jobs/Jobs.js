import React from "react"
import jobsList from "src/assets/json/indeed-js-node-remote.json"
import quotes from "src/assets/json/quotes.json"
import Quote from "src/components/Quotes/Quote.js"
import { find_mentions } from "src/assets/lib/str-jsx.js"
import JobFull from "src/components/Jobs/JobFull.js"
import Links from "./Links.js"
import Search from "./Search.js"
import { JobsStyled } from "./Jobs.styled.js"

export default class Jobs extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      srcText: "",
      jobSelected: {},
      jobsFound: {},
      jobsFoundLength: 0
    }
  }
  componentDidMount() {
    this.findMentions("remote|wfh|telecommute|remotely|work from")
  }

  /*
   * USER INTERACTIONS
   */
  findMentions = (srcText) => {
    // set search string, reset results
    this.setState({ srcText: srcText, jobSelected: {}, jobsFoundLength: 0 }, () => {
      let jobsFoundLength = 0
      let jobsFound = {}
      let jobSelected = {}
      /*
       * iterate ORIGINAL UNCHANGED LIST {Array}
       */
      for (let obj of jobsList) {
        if (obj && obj.job) {
          obj.job.mentions = srcText ? find_mentions(srcText, obj.job.body) : []
          // not found, skip
          if (!obj.job.mentions.length) continue
          // auto-select first found result
          if (!jobSelected.body) {
            jobSelected = obj.job
          }
          // save, with unique key
          jobsFound[obj.job.title + obj.job.company] = obj.job
          jobsFoundLength++
        }
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
      this.setState({ jobsFound })
    })
  }

  /*
   * VIEW
   */
  render() {
    console.warn("render Jobs.js", this.state.srcText)
    return (
      <JobsStyled>
        <div className="middle">
          <div className="side">
            {/*
             * SEARCH - highlight word
             */}
            <Search
              srcText={this.state.srcText}
              onChange={(str) => {
                this.findMentions(str)
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
              srcText={this.state.srcText}
              onClick={(job) => {
                this.setState({ jobSelected: job })
              }}
            />
          </div>
          <div className="main">
            {/*
             * FULL DESCRIPTION - selected job
             */}
            <div className="full_job_text">
              <JobFull job={this.state.jobSelected} src={this.state.srcText} />
            </div>
            {/*
             * QUOTES - if no job selected
             */}
            {!this.state.jobSelected.body && (
              <div className="quotes">{quotes.map((quo, i) => (quo ? <Quote key={i} quo={quo} /> : null))}</div>
            )}
          </div>
        </div>
      </JobsStyled>
    )
  }
}
