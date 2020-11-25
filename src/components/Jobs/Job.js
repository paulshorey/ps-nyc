import React from "react"
import { JobStyled } from "./Job.styled.js"

export default function ({ job = {}, ...props }) {
  if (!job.title) return null
  return (
    <JobStyled {...props}>
      <h4>{job.title}</h4>
      <div className="meta">{job.meta}</div>
    </JobStyled>
  )
}
