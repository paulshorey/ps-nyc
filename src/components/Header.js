import React from "react"
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
      email: ""
    }
    this.secretState = {
      phone: "3857706789",
      email: "hello@paulshorey.com"
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
      <HeaderStyled className="">
        <div className="h bit_wider">
          <div className={"h-left" + (goback ? " go-back" : "")}>
            {goback && (
              <>
                <FA icon={faChevronLeft} className="" />
                &thinsp;&thinsp;
              </>
            )}
            <a href="/">
              <span className="icon" style={{ verticalAlign: "-0.1rem" }} dangerouslySetInnerHTML={{ __html: svg_happyface }} />
              <b>Paul Shorey</b>
            </a>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <span>
              <b>
                <span className="hide-small">Web </span>App{" "}
              </b>
              +<b> API</b>&thinsp;&thinsp;<b>Developer</b>
              {/*<span className="hide-small"> &amp; UI Designer</span>*/}
              {/*<span className="show-large">, &thinsp;UI designer</span>*/}
            </span>
          </div>
          <div className="h-right">
            Resume:&nbsp;
            <a href="https://paulshorey.com/files/PaulShorey-FullStack.pdf" target="_blank">
              <b style={{ fontWeight: "normal" }}>
                FullStack <FA icon={faFileDownload} className="x85" style={{ verticalAlign: "-0.175rem" }} />
              </b>
            </a>{" "}
            |{" "}
            <a href="https://paulshorey.com/files/PaulShorey-FrontEnd.pdf" target="_blank">
              <b style={{ fontWeight: "normal" }}>
                FrontEnd <FA icon={faFileDownload} className="x85" style={{ verticalAlign: "-0.175rem" }} />
              </b>
            </a>{" "}
            |{" "}
            <span>
              <a href={"mailto:" + this.state.email} target="_blank" style={{ marginLeft: "0.125rem" }}>
                <b>
                  {this.state.email} <FA icon={faEnvelope} className="x85" style={{ verticalAlign: "-0.175rem" }} />
                </b>
              </a>{" "}
              <span>
                &nbsp;<span className="">|&nbsp;</span>
              </span>
            </span>
            <span>
              <a href={"tel:" + this.state.phone}>
                {this.state.phone} <FA icon={faPhone} className="x85" />
              </a>
            </span>
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
