import React, { useState } from "react"
import jobslist from "src/assets/json/indeed-js-node.json"
import quotes from "src/assets/json/quotes.json"
import Quote from "src/components/Quotes/Quote.js"
import Job from "src/components/Jobs/Job.js"
import JobFull from "src/components/Jobs/JobFull.js"
import { JobsStyled } from "./Jobs.styled.js"

export default function () {
  const [srcText, set_srcText] = useState("remote|wfh|telecommute|remotely|work from")
  const [jobBody, set_jobBody] = useState({})

  return (
    <JobsStyled>
      <div className="middle">
        <div className="side">
          {/*<form>*/}
          {/*  <fieldset>*/}
          {/*    <input*/}
          {/*      type="text"*/}
          {/*      value={srcText}*/}
          {/*      onChange={(event) => {*/}
          {/*        set_srcText(event.target.value)*/}
          {/*      }}*/}
          {/*    />*/}
          {/*    <button type="button">search</button>*/}
          {/*  </fieldset>*/}
          {/*</form>*/}
          <div className="jobs">
            {jobslist.map((obj, i) => {
              if (obj && obj.job) {
                if (!jobBody.body) set_jobBody(obj.job)
                return (
                  <Job
                    key={i}
                    job={obj.job}
                    className={jobBody === obj.job ? " highlighted" : ""}
                    onClick={(what) => {
                      console.log("clicked what", what)
                      console.log("onclick obj.job", obj.job)
                      set_jobBody(obj.job)
                    }}
                  />
                )
              } else {
                return null
              }
            })}
          </div>
        </div>
        <div className="main">
          <div className="full_job_text">
            <JobFull job={jobBody} src={srcText} />
          </div>
          {!jobBody && (
            <div className="quotes">{quotes.map((quo, i) => (quo ? <Quote key={i} quo={quo} /> : null))}</div>
          )}
        </div>
      </div>
    </JobsStyled>
  )
}
