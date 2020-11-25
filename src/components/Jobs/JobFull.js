import React from "react"
import { JobFullStyled } from "./JobFull.styled.js"

export default function ({ job = {} }) {
  if (!job.body) return null
  let mentions = job.mentions || []
  return (
    <JobFullStyled>
      {!!mentions.length && <div className="mentions">{mentions.map((found) => found)}</div>}
      <h3>{job.title}</h3>
      <p>{job.meta}</p>
      <div className="body" dangerouslySetInnerHTML={{ __html: job.body }} />
    </JobFullStyled>
  )
}
