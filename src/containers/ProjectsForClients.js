import React from "react"
import App from "src/components/App"
// import CarouselAboutUs from "src/components/carousels/AboutUs"
// import BeyondLimits from "src/components/beyondlimits/BeyondLimits"
import styled from "styled-components"
import carousel_aboutme from "src/html/carousel/aboutme.html"
import domains from "src/html/projects/2020/domains.html"
import thesaurus from "src/html/projects/2020/thesaurus.html"
import other from "src/html/projects/2020/other.html"
import projects_past from "src/html/projects/past.html"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import { faArrowDown } from "@fortawesome/pro-regular-svg-icons"
// import { faEnvelope, faPhone } from "@fortawesome/pro-solid-svg-icons"

export default class extends React.Component {
  render() {
    return (
      <App className="pageProjectsForClients">
        <ProjectsStyled>
          <div className="content full">
            <p>
              I've been coding since 2008. Really enjoy web technologies, creating something from nothing, collaborating
              with people, learning about new industries. <span className="nowrap">What are you up to?</span>{" "}
              <span className="nowrap">Let's chat!</span>
            </p>
          </div>

          <hr className="content full" />
          <div className="content full flex" style={{ maxHeight: "9rem" }}>
            <div className="simple_nav">
              <a href="/about"> 🌇 About me </a>
              <br />
              {/*<a href=""> 📓 Writing (coming soon)</a> <br />*/}
              <a href="https://notes.paulshorey.com" target="_blank">
                {" "}
                🤖 Programming Notes{" "}
              </a>
              <br />
              <a
                onClick={() => {
                  document.querySelector('[name="work-experience"]').scrollIntoView({
                    behavior: "smooth"
                  })
                }}
              >
                {" "}
                👨‍💻 Work Experience <FA icon={faArrowDown} className="faArrowDown x70" />
              </a>
              <br />
              <h2>
                🚀 Side Projects <FA icon={faArrowDown} className="faArrowDown x70" />
              </h2>
            </div>
            <div className="flex-grow" dangerouslySetInnerHTML={{ __html: carousel_aboutme }} />
          </div>
          <hr className="content full" />

          <section className="content section-new-projects">
            <div dangerouslySetInnerHTML={{ __html: domains }} />
            <div dangerouslySetInnerHTML={{ __html: thesaurus }} />
            <div dangerouslySetInnerHTML={{ __html: other }} />
          </section>

          <section className="content section-work-experience">
            <a name="work-experience" />
            <h2>
              👨‍💻 Previous Experience <FA icon={faArrowDown} className="faArrowDown x70" />
            </h2>
            <hr />
            {/*<BeyondLimits />*/}
            <div dangerouslySetInnerHTML={{ __html: projects_past }} />
          </section>
        </ProjectsStyled>
      </App>
    )
  }
}

const ProjectsStyled = styled.div`
  .carousel {
    margin-left: 2rem;
    height: 8.25rem;
  }
  .faArrowDown {
    vertical-align: -0.19rem;
  }
  .simple_nav {
    position: relative;
    min-width: 11.5rem;
    font-weight: 600;
    line-height: 2.125rem;
    h2:last-child {
      position: absolute;
      bottom: 0;
    }
    > * {
      white-space: nowrap;
    }
  }
  .section-new-projects {
    margin-top: 1rem;
    margin-bottom: 1rem;
    > div {
      margin-top: 2rem;
      margin-bottom: 2rem;
    }
  }
`
