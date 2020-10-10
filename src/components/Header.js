import React from "react"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
// import { faSmileBeam } from "@fortawesome/pro-regular-svg-icons"
import { faPhone, faFilePdf, faEnvelope } from "@fortawesome/pro-solid-svg-icons"
import styled from "styled-components"
import svg_happyface from "src/html/svg/happyface.html"
// import projects_past from "../html/projects/past.html"

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
      <HeaderStyled className="content">
        <div className="h bit_wider">
          <div className="h-left">
            <span>
              <a href="/about">
                <span
                  className="icon"
                  style={{ verticalAlign: "-0.1rem" }}
                  dangerouslySetInnerHTML={{ __html: svg_happyface }}
                />
                {/*<span className="icon">*/}
                {/*  <img src="/assets/svg/happyface.svg" />*/}
                {/*</span>*/}
                Paul Shorey
              </a>{" "}
              <span>&nbsp;|&nbsp;Javascript Software Engineer / UI Designer / Tinkerer &nbsp;</span>
            </span>
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
        </div>
        <div className="bit_wider">
          <p>
            I just want to build cool stuff, and to collaborate with with cool people. Recently I took time to finish
            some interesting projects, and to sharpen my programming skills. It was great practice doing data
            manipulation in JavaScript, and architecting full-stack apps and APIs. What's next? Lets discuss the
            possibilities. <a href="">Lets meet!</a>
          </p>
        </div>
      </HeaderStyled>
    )
  }
}

const HeaderStyled = styled.header``

export default Header
