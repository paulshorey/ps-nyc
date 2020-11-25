import React from "react"
import { JobStyled } from "./Job.styled.js"

export default function ({ job = {}, src = "" }) {
  if (!job.body) return null
  let references = src ? highlight_reference(src, job.body) : []
  return (
    <JobStyled>
      {references.map((found) => (
        <p dangerouslySetInnerHTML={{ __html: found }} />
      ))}
      <h3>{job.title}</h3>
      <p>{job.meta}</p>
      <div className="body" dangerouslySetInnerHTML={{ __html: job.body }} />
    </JobStyled>
  )
}

function highlight_reference(src, text) {
  let src_arr = src.split('|')
  let re_beforeAfter = "[\\p{L}\\d: ’'\"-]"
  let re = new RegExp("(" + re_beforeAfter + "{0,120})(" + src + ")(" + re_beforeAfter + "{0,240})", "ugim")
  // text
  text = text.replace(/{{.*?}}/g, " ")
  text = text.replace(/http.+html|\||\s|http/g, " ")
  text = text.replace(/([A-Z]{1})\./g, "$1")
  text = text.replace(/\.\.\.|\[\[|]]|===/g, "")
  text = text.replace(/([\p{L}]+)[\d]+/gu, "$1")
  text = text.replace(/%[0-9]{2}|\s+|\+|-/g, " ")
  text = text.replace(/  /g, "\n")

  // found
  let output = []
  let matches = text.match(re)
  if (!matches) return output
  for (let found of matches) {
    found = found.toLowerCase()
    found = found.replace(/'s|’s/g, "*s")
    found = found.replace(/['’]+/g, "")
    found = found.replace(/\*/g, "’").trim()
    for (let str of src_arr) {
      found = found.replace(str, '<span class="highlighted">' + str + "</span>")
    }
    output.push(found)
  }

  // format
  return output
}
