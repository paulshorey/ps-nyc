import React, { useState } from "react"
import { JobFullStyled } from "./JobFull.styled.js"
// import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
// import { faHeart } from "@fortawesome/pro-regular-svg-icons"
// import { faHeart as faHeartSolid, faDollarSign, faTimes } from "@fortawesome/pro-solid-svg-icons"
function get_ss(key, default_value) {
  if (typeof window !== "object") {
    return default_value
  }
  // return default_value
  let ss_value = window.sessionStorage.getItem(key)
  // console.log('got from ss:', key, ss_value);
  return ss_value ? JSON.parse(ss_value) : default_value
}
function set_ss(key, value) {
  if (typeof window === "object") {
    window.sessionStorage.setItem(key, JSON.stringify(value))
  }
}

export default function ({ job = {} }) {

  /*
   * State
   */
  const [putInList, set_putInList] = useState(get_ss("whatList_" + job.uid) || "new")
  const do_putInList = function (list) {
    //
    // save job relationship to list
    set_ss("whatList_" + job.uid, list)
    //
    // prepare to save job
    let saveJob = { ...job }
    delete saveJob.prev_job
    delete saveJob.next_job
    //
    // all saved jobs
    let savedJobs = get_ss("savedJobs")
    if (typeof savedJobs !== "object") {
      savedJobs = {}
    }
    // save all jobs
    savedJobs[job.uid] = JSON.stringify(saveJob)
    set_ss("savedJobs", savedJobs)
    //
    // set local state
    set_putInList(list)
  }
  /*
   * View
   */
  if (!job.body) return null
  let mentions = job.mentions || []
  let random = Math.round(Math.random() * 1000000)
  return (
    <JobFullStyled>
      <div className="mentions">
        {/*
         * TOP LINKS - LIKE/HIDE
         */}
        <div className="topLinks">
          {/*<a href={job.original || job.url} target="_blank">*/}
          {/*  <FA icon={faDollarSign} /> {job.original ? "apply to original" : "apply on " + job.source}*/}
          {/*</a>{" "}*/}
          {/*&nbsp;|&nbsp;*/}
          {/*<span className="link">*/}
          {/*  <FA icon={faHeart} /> save for later*/}
          {/*</span>{" "}*/}
          {/*&nbsp;|&nbsp;*/}
          {/*<span className="link">*/}
          {/*  <FA icon={faTimes} /> ignore*/}
          {/*</span>*/}

          <div className="fieldset radio">
            {/*
             * special case for "apply" link
             */}
            <span
              onClick={() => {
                do_putInList("applied")
              }}
            >
              {putInList === "applied" && (
                <>
                  <input
                    type="radio"
                    name={"showList" + random}
                    value={"applied"}
                    defaultChecked={putInList === "applied"}
                  />
                  <span className="radioStyled" />
                </>
              )}
              <label>
                <a href={job.original || job.url} target="_blank">
                  {job.original ? "apply to original" : "apply on " + job.source}
                </a>
              </label>
            </span>
            {/*
             * other lists
             */}
            {["new", "saved", "ignored"].reverse().map((val) => (
              <span
                onClick={() => {
                  do_putInList(val)
                }}
              >
                <input type="radio" name={"showList" + random} value={val} defaultChecked={putInList === val} />
                <span className="radioStyled" />
                <label>{val}</label>
              </span>
            ))}
          </div>
        </div>
        {/*
         * HIGHLIGHTED MENTIONS
         */}
        {mentions.map((found) => found)}
      </div>
      <article>
        <h2 className="title" dangerouslySetInnerHTML={{ __html: job.title }} />
        <h4 className="subtitle">
          <a href={"https://www.google.com/search?tbs=qdr:y2&q=" + job.employer} target="_blank">
            {job.employer}
          </a>
        </h4>
        <div className="body" dangerouslySetInnerHTML={{ __html: job.body }} />
        <h4 className="subtitle">
          <a href={job.original || job.url} target="_blank">
            {job.original ? "view original post" : "view on " + job.source}
          </a>
        </h4>
      </article>
    </JobFullStyled>
  )
}
