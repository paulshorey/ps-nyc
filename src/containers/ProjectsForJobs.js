import React from "react"
import App from "src/components/App"
import CarouselAboutUs from "src/components/carousels/AboutUs"
import styled from "styled-components"
import projects_past from "src/html/projects/past.html"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import { faArrowDown } from "@fortawesome/pro-regular-svg-icons"
import domains from "../html/projects/2020/domains.html"
import thesaurus from "../html/projects/2020/thesaurus.html"
import open_source from "../html/projects/2020/open_source.html"

export default class extends React.Component {
  constructor(props) {
    super(props)
    this.state = {}
  }

  componentDidMount() {}

  render() {
    return (
      <App>
        <ProjectsStyled className="content">
          <div>
            <p>
              I just want to build cool stuff, and to collaborate with with people. Recently I took time to finish some
              exciting projects, and to sharpen my skills. What are you working on? Maybe I can help?
              <br />
              &nbsp;
            </p>
          </div>

          <hr />

          <div className="flex">
            <div className="simple_nav">
              <a href=""> 🌇 Photos &amp; Hobbies </a>
              <br />
              {/*<a href=""> 📓 Writing (coming soon)</a> <br />*/}
              <a href="https://notes.paulshorey.com" target="_blank"> 🤖 Programming Notes </a>
              <br />
              <a href=""> 👨‍💻 Experience </a>
              <br />
              <h2>
                🚀 New Projects <FA icon={faArrowDown} className="faArrowDown x70" />
              </h2>
            </div>
            <div className="flex-grow">
              <CarouselAboutUs />
            </div>
          </div>

          <hr />

          <div dangerouslySetInnerHTML={{ __html: open_source }} />
          <div dangerouslySetInnerHTML={{ __html: thesaurus }} />
          <div dangerouslySetInnerHTML={{ __html: domains }} />

          <a name="work-experience" />
          <h2>👨‍💻 Experience:</h2>
          <hr />
          <div dangerouslySetInnerHTML={{ __html: projects_past }} />
        </ProjectsStyled>
      </App>
    )
  }
}

const ProjectsStyled = styled.section`
  .carousel {
    margin-left: 2rem;
    height: 8.25rem;
  }
  .faArrowDown {
    vertical-align: -0.19rem;
  }
  .simple_nav {
    position: relative;
    min-width: 10rem;
    font-weight: 600;
    h2:last-child {
      position: absolute;
      bottom: 0;
      white-space: nowrap;
    }
  }
`
