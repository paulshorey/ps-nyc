import React from "react"
// import { Link } from "gatsby"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import { faPhone, faFileDownload, faEnvelope } from "@fortawesome/pro-solid-svg-icons"
import { faChevronLeft } from "@fortawesome/pro-light-svg-icons"
import svg_happyface from "src/html/svg/happyface.html"
import styled from "styled-components"

class Header extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      phone: "",
      email: "",
      resume: ""
    }
    this.secretState = {
      phone: "385.770.6789",
      email: "hello@paulshorey.com",
      resume: "https://paulshorey.com/files/PaulShorey-SoftwareEngineer.pdf"
    }
  }
  componentDidMount() {
    if (!this.state.phone) {
      this.setState(this.secretState)
    }
  }
  componentDidUpdate() {
    if (!this.state.phone) {
      this.setState(this.secretState)
    }
  }
  render() {
    let goback = typeof window === "object" && window.location.pathname !== "/"
    return (
      <HeaderStyled className="content full">
        <div className="h bit_wider">
          <div className={"h-left" + (goback ? " go-back" : "")}>
            {goback && (
              <>
                <FA icon={faChevronLeft} className="" />
                &thinsp;&thinsp;
              </>
            )}
            <a href="/">
              <span
                className="icon"
                style={{ verticalAlign: "-0.1rem" }}
                dangerouslySetInnerHTML={{ __html: svg_happyface }}
              />
              <b>Paul Shorey</b>
            </a>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <span>
              <b>Web App </b>+<b> API</b>&thinsp;&thinsp;<b>Developer</b>
              {/*<span className="hide-small"> &amp; UI Designer</span>*/}
              {/*<span className="show-large">, &thinsp;UI designer</span>*/}
            </span>
          </div>
          <div className="h-right">
            <a href={this.state.resume} target="_blank">
              <b style={{ fontWeight: "normal" }}>
                Resume <FA icon={faFileDownload} className="x85" style={{ verticalAlign: "-0.175rem" }} />
              </b>
            </a>{" "}
            <span>
              <span>
                &nbsp;<span className="hide-small">|&nbsp;</span>
              </span>
              <a href={"mailto:" + this.state.email} target="_blank" style={{ marginLeft: "0.125rem" }}>
                <b>
                  {this.state.email} <FA icon={faEnvelope} className="x85" style={{ verticalAlign: "-0.175rem" }} />
                </b>
              </a>{" "}
              <span>
                &nbsp;<span className="hide-small">|&nbsp;</span>
              </span>
            </span>
            <a href={"tel:" + this.state.phone}>
              {this.state.phone} <FA icon={faPhone} className="x85" />
            </a>
          </div>
        </div>
      </HeaderStyled>
    )
  }
}

const HeaderStyled = styled.header`
  .h-left {
    a {
      text-decoration: none;
    }
  }
  .h-left.go-back {
    a {
      b {
        border-bottom: solid 1px white;
      }
      &:hover {
        b {
          border-bottom: none;
        }
      }
    }
  }
`

export default Header
