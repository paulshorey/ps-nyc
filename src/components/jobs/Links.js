import React, { useEffect, useRef } from "react"
import Job from "src/components/jobs/Job.js"

export default function ({ jobsFound = {}, jobSelected = {}, srcText = "", onClick = () => {} }) {
  // const [srcText, set_srcText] = useState("remote|wfh|telecommute|remotely|work from")
  // const [jobSelected, set_jobSelected] = useState({})
  return (
    <div className="Links">
      {Object.values(jobsFound).map((job, i) => {
        if (job) {
          return (
            <div
              key={i + job.title}
              onClick={() => {
                console.log("Links.js JOB CLICKED", job)
                onClick(job)
              }}
            >
              <Job job={job} src={srcText} className={jobSelected === job ? " highlighted" : ""} />
            </div>
          )
        } else {
          return null
        }
      })}
    </div>
  )
}
