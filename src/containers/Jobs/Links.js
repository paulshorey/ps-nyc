import React from "react"
import Job from "src/components/Jobs/Job.js"

export default function ({ jobsFound = {}, jobSelected = {}, srcText = "", onClick = () => {} }) {
  // const [srcText, set_srcText] = useState("remote|wfh|telecommute|remotely|work from")
  // const [jobSelected, set_jobSelected] = useState({})
  console.log('Links.js jobsFound',jobsFound);
  let jobsList = []
  for (let uid in jobsFound) {
    jobsList.push(jobsFound[uid])
  }
  console.log('Links.js jobsList',jobsList);
  return (
    <div className="Links">
      {jobsList.map((job, i) => {
        if (job) {
          return (
            <div
              key={i + job.title}
              onClick={() => {
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
