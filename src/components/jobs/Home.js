import React from "react"
import JobFull from "./JobFull"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import {
  faArrowAltUp,
  faArrowAltDown,
  faQuestionCircle as faQuestionCircleSolid,
  faHandPointLeft as faHandPointLeftSolid
} from "@fortawesome/pro-solid-svg-icons"
import {
  faQuestionCircle as faQuestionCircleLight,
  faHandPointLeft as faHandPointLeftLight
} from "@fortawesome/pro-regular-svg-icons"
import quotes from "./json/quotes.json"
import Quote from "../Quotes/Quote"

export default function ({ jobSelected = {}, reHighlight = "" }) {
  return (
    <>
      {/*
       * FULL DESCRIPTION - selected job
       */}
      <div className="full_job_text">
        <JobFull job={jobSelected} src={reHighlight} />
      </div>
      {/*
       * QUOTES - if no job selected
       */}
      {!jobSelected.body && (
        <div className="home">
          <div className="legend">
            {/*<p>*/}
            {/*  Welcome! This app is a quick prototype. It could be used for any kind of data, like wikipedia, news, or*/}
            {/*  research.*/}
            {/*</p>*/}
            {/*<p>Click "about" in the top/right corner to learn more, and to contribute!</p>*/}
            <h2 className="color-attention">
              <FA icon={faQuestionCircleSolid} className="x85" /> Use keyboard arrows <FA icon={faArrowAltUp} /> /
              <FA icon={faArrowAltDown} /> to flip through jobs
            </h2>
            <p className="color-attention">
              <FA icon={faQuestionCircleLight} className="x85" /> {/* style={{ transform: "rotate(45deg)" }}*/}
              Use Regular Expressions to exclude/find results
            </p>
          </div>
          <div className="quotes">{quotes.map((quo, i) => (quo ? <Quote key={i} quo={quo} /> : null))}</div>
        </div>
      )}
    </>
  )
}
