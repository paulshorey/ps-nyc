import React from "react"
import { HeaderStyled } from "./Header.styled.js"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import { faHeart, faTimes, faQuestionCircle } from "@fortawesome/pro-regular-svg-icons"
import { faHeart as faHeartSolid, faDollarSign } from "@fortawesome/pro-solid-svg-icons"

export default function () {
  return (
    <HeaderStyled>
      <h1>
        <a href="https://paulshorey.com" target="_blank">
          Paul's
        </a>{" "}
        Job Search Tool
      </h1>
      {/*<a href="">*/}
      {/*  <FA icon={faDollarSign} /> applied*/}
      {/*</a>{" "}*/}
      {/*|*/}
      {/*<a href="">*/}
      {/*  <FA icon={faHeartSolid} /> saved*/}
      {/*</a>{" "}*/}
      {/*|*/}
      {/*<a href="">*/}
      {/*  <FA icon={faTimes} /> ignored*/}
      {/*</a>{" "}*/}
      {/*|*/}
      {/*<a href="">*/}
      {/*  <FA icon={faHeart} /> all*/}
      {/*</a>{" "}*/}
      {/*|*/}
      <a
        href="https://www.indeed.com/jobs?q=%28javascript+or+js%29+%28node+or+nodejs+or+es6+or+%22+AI+%22+or+ui+or+ux+or+uiux+or+elasticsearch%29+%28remote+or+wfh+or+telecommute+or+remotely+or+%22work+from%22%29+-junior+-jr+-intern+-graduate+-associate+-qa+-java+-temporarily+-%22.net%22+-j2ee&fromage=14"
        target="_blank"
      >
        <span>
          about <FA icon={faQuestionCircle} />
        </span>
      </a>
    </HeaderStyled>
  )
}
