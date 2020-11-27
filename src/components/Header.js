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
      <HeaderStyled className="content full">
        <div className="h bit_wider">
          <div className="h-left">
            <a href="/">
              <span
                className="icon"
                style={{ verticalAlign: "-0.1rem" }}
                dangerouslySetInnerHTML={{ __html: svg_happyface }}
              />
              {/*<span className="icon">*/}
              {/*  <img src="/assets/svg/happyface.svg" />*/}
              {/*</span>*/}
              <b>Paul Shorey</b>
            </a>
            <span>
              &nbsp;&nbsp;|&nbsp;&nbsp;
              <b>App &amp; API</b>&thinsp;&thinsp;<b>developer</b>
              {/*<span className="hide-small"> &amp; designer</span>*/}
              {/*<span className="show-large">, &thinsp;UI designer</span>*/}
            </span>
          </div>
          <div className="h-right">
            <a href={"mailto:" + this.state.email} target="_blank">
              <b>
                {this.state.email} <FA icon={faEnvelope} className="x85" style={{ verticalAlign: "-0.175rem" }} />
              </b>
            </a>{" "}
            <span>
              &nbsp;<span className="hide-small">|&nbsp;</span>
            </span>
            <a href={"tel:" + this.state.phone}>
              {this.state.phone} <FA icon={faPhone} className="x85" />
            </a>
            {/*<span>*/}
            {/*  &nbsp;<span className="hide-small">|&nbsp;</span>*/}
            {/*</span>*/}
            {/*<a href={this.state.resume}>*/}
            {/*  Resume &nbsp;*/}
            {/*  <FA icon={faFilePdf} className="x85" />*/}
            {/*</a>*/}
          </div>
        </div>
      </HeaderStyled>
    )
  }
}

const HeaderStyled = styled.header``

export default Header
