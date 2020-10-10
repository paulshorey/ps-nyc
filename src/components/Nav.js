import React from "react"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import { faSmileBeam, faPhotoVideo } from "@fortawesome/pro-light-svg-icons"
import { faPhone, faFilePdf, faEnvelope } from "@fortawesome/pro-solid-svg-icons"
// import styled from "styled-components"

class Header extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      phone: "",
      email: "",
      resume: ""
    }
  }
  componentDidMount() {
    if (typeof window === "object" && "$" in window && !this.state.phone) {
      this.setState({
        phone: "385.770.6789",
        email: "hello@paulshorey.com",
        resume: "/file.docx"
      })
    }
    if (typeof window === "object" && "$" in window) {
      let $ = window.$
      $("[secretmailto]").each(function () {
        $(this).get(0).innerHTML = $(this).attr("secretmailto")
        $(this).attr("href", "mailto:" + $(this).attr("secretmailto"))
      })

      $("[secrettel]").each(function () {
        $(this).get(0).innerHTML = $(this).attr("secrettel")
        $(this).attr("href", "tel:" + $(this).attr("secrettel").replace(/./g, ""))
      })
    }
  }
  componentDidUpdate() {
    if (typeof window === "object" && "$" in window && !this.state.phone) {
      this.setState({
        phone: "385.770.6789",
        email: "hello@paulshorey.com",
        resume: "/file.docx"
      })
    }
  }
  render() {
    return (
      <header className="content">
        <div className="h-left">
          <span>
            <a href="/about">
              <span className="icon">
                &thinsp;
                <FA icon={faSmileBeam} style={{ marginTop: "0.25rem" }} />
              </span>
              Paul Shorey
            </a>{" "}
            <span>&nbsp;|&nbsp;Javascript Software Engineer / UI Designer / Tinkerer &nbsp;</span>
          </span>
          <a href="/about">
            <span className="icon">
              <FA icon={faPhotoVideo} className="x85" style={{ marginTop: "0.25rem" }} />
            </span>
            Photos | Videos | Hobbies
          </a>{" "}
          {/*<a href="/about">*/}
          {/*  <span className="icon">*/}
          {/*    <FA icon={faPhotoVideo} className="x85" style={{ marginTop: "0.25rem" }} />*/}
          {/*  </span>*/}
          {/*  Projects*/}
          {/*</a>{" "}*/}
        </div>
        <div className="h-right">
          <a href={"mailto:" + this.state.email}>
            {this.state.email} <FA icon={faEnvelope} className="x85" style={{ marginTop: "0.25rem" }} />
          </a>{" "}
          &nbsp;|&nbsp;
          <a href={"tel:" + this.state.phone}>
            {this.state.phone} <FA icon={faPhone} className="x85" />
          </a>
          &nbsp;|&nbsp;
          <a href={this.state.resume}>
            Resume &nbsp;
            <FA icon={faFilePdf} className="x85" />
          </a>
        </div>
      </header>
    )
  }
}

export default Header
