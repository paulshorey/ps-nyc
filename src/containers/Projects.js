import React from "react"
import App from "src/components/App"
import RecentOther from "src/components/Projects/RecentOther"
// import CarouselAboutUs from "src/components/carousels/AboutUs"
// import BeyondLimits from "src/components/beyondlimits/BeyondLimits"
import styled from "styled-components"
import carousel_aboutme from "src/html/carousel/aboutme.html"
import wordio from "src/html/projects/2020/wordio.html"
// import thesaurus from "src/html/projects/2020/thesaurus.html"
import projects_past from "src/html/projects/past.html"
// import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
// import { faArrowDown } from "@fortawesome/pro-regular-svg-icons"
// import { faFileDownload } from "@fortawesome/pro-solid-svg-icons"
// import { faEnvelope, faPhone } from "@fortawesome/pro-solid-svg-icons"
import { LuminousGallery } from "luminous-lightbox"
import "luminous-lightbox/dist/luminous-basic.css"

export default class extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      phone: "",
      email: "",
      resume: ""
    }
  }
  componentDidMount() {
    const options = {
      caption: function (el) {
        if (el && el.dataset && el.dataset.title) {
          return el.dataset.title
        }
        return ""
      }
    }
    new LuminousGallery(document.querySelectorAll(".uuiCarousel a"), {}, options)
  }
  render() {
    return (
      <App className="pageProjectsForClients">
        <ProjectsStyled>
          <div className="navStyle">
            <div className="content full">
              <p className="top_text">
                I've been coding since 2008. Really enjoy web technologies, creating something from nothing, meeting new
                people, learning about new industries. Now looking for a new job!&nbsp;
                {/*<b className="nowrap">Now looking for a new full-time gig.&thinsp;</b> Love JavaScript, ES6 modules,*/}
                {/*UI/UX, and data-driven solutions. Will continue to learn, experiment, and create in my free time.{" "}*/}
              </p>
            </div>

            <div className="content full flex" style={{ maxHeight: "9rem" }}>
              <div className="titleFont simple_nav">
                <a href="/about"> 🌇 About me </a>
                <br />
                {/*<a href=""> 📓 Writing (coming soon)</a> <br />*/}
                <a href="https://notes.paulshorey.com" target="_blank">
                  {" "}
                  📓 Programming Notes{" "}
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
                  💻 Work Experience
                </a>
                <br />
                <a href="" target="_blank">
                  🚀 Code samples
                </a>
              </div>
              <div className="flex-grow" dangerouslySetInnerHTML={{ __html: carousel_aboutme }} />
            </div>
          </div>

          <section className="content section_new_projects">
            <div dangerouslySetInnerHTML={{ __html: wordio }} />
            {/*<div dangerouslySetInnerHTML={{ __html: thesaurus }} />*/}
            <RecentOther />
          </section>

          <section className="content section_work_experience">
            <a name="work-experience" />
            {/*<h2>*/}
            {/*  👨‍💻 Previous Experience <FA icon={faArrowDown} className="faArrowDown x70" />*/}
            {/*</h2>*/}
            {/*<hr />*/}
            {/*<BeyondLimits />*/}
            <div dangerouslySetInnerHTML={{ __html: projects_past }} />
          </section>
        </ProjectsStyled>
      </App>
    )
  }
}

const ProjectsStyled = styled.div`
  max-width: 100vw;
  overflow: hidden;
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
    font-weight: bold;
    line-height: 2.125rem;
    margin-right: 0.5rem;
    > * {
      white-space: nowrap;
    }
  }
  .section_new_projects {
    margin-top: 1rem;
    margin-bottom: 1rem;
  }
  p.top_text {
    font-size: 1rem;
    line-height: 1.5rem;
    margin-bottom: 1.25rem;
    @media (min-width: 860px) {
      margin-right: -2rem;
    }
    .nowrap {
      @media (max-width: 860px) {
        display: block;
        margin-top: 1.5rem;
      }
    }
  }
  hr {
    background: none;
    border: none;
    padding: 0;
    margin: 0;
    height: 0;
    @media (max-width: 860px) {
      height: 1.5rem;
    }
  }
  a {
    text-shadow: 1px 1px 1px white;
  }
`
