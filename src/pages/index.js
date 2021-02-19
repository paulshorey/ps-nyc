import React from "react"
import Helmet from "react-helmet"
import OpenSource from "src/components/home/OpenSource"
import Wordio from "src/components/home/Wordio"
import styled from "styled-components"
import carousel_aboutme from "src/html/home/aboutme_carousel.html"
import projects_past from "src/html/home/past.html"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import { faArrowDown } from "@fortawesome/pro-regular-svg-icons/faArrowDown"
import { faFileDownload } from "@fortawesome/pro-solid-svg-icons"
import { LuminousGallery } from "luminous-lightbox"
import "luminous-lightbox/dist/luminous-basic.css"
import Header from "../components/Header"
import HorizontalCarousel from "horizontal_carousel/src"

export default class extends React.Component {
  constructor(props) {
    super(props)
  }
  componentDidMount() {
    /*
     * Popup lightbox
     */
    const options = {
      caption: function (el) {
        if (el && el.dataset && el.dataset.title) {
          return el.dataset.title
        }
        return ""
      }
    }
    new LuminousGallery(document.querySelectorAll(".lightbox a"), {}, options)
    /*
     * Mount carousels
     */
    this.carousels = []
    let els = document.querySelectorAll(".horizontal_carousel") // <-- lazy method! Can also use array of React refs
    if (els) {
      for (let el of els) {
        this.carousels.push(new HorizontalCarousel(el))
      }
    }
  }
  componentWillUnmount() {
    /*
     * Unmount carousels
     */
    for (let ref of this.carousels) {
      if (!ref || !ref.end) continue
      ref.end()
    }
  }
  render() {
    return (
      <ProjectsStyled>
        <Helmet>
          <title>Paul Shorey ~ Web Software Engineer and Designer</title>
        </Helmet>
        <div className="featuredCard">
          <Header />
          <div className="content full">
            <p className="top_text">
              Hi!&nbsp; 👋 I've been coding since 2008. <FA icon={faArrowDown} className="faArrowDown x85 color-attention" /> Enjoy creating something from nothing, collaborating with
              people, designing and developing software. Let's build something together!
            </p>
          </div>
          <div className="content full flex" dangerouslySetInnerHTML={{ __html: carousel_aboutme }} style={{ overflow: "auto" }}></div>
        </div>

        <section className="content full">
          {/*<section className="content">*/}
          {/*  <p className="top_caption slight_right_overflow">*/}
          {/*    <FA icon={faArrowDown} className="faArrowDown x85 color-attention" />*/}
          {/*    &thinsp; Scroll down to see a timeline of my past works.*/}
          {/*    Most of them I've designed. For personal projects I also wrote the back-end and DevOps/CI.*/}
          {/*    /!*Currently looking for a good remote company that I can grow with.{" "}*!/*/}
          {/*    /!*<a href="https://paulshorey.com/files/PaulShorey-SoftwareEngineer.pdf" target="_blank">*!/*/}
          {/*    /!*  <FA icon={faFileDownload} className="x85" style={{ verticalAlign: "-0.175rem" }} /> Resume*!/*/}
          {/*    /!*</a>*!/*/}
          {/*  </p>*/}
          {/*</section>*/}

          <Wordio />
          <OpenSource />

          <a name="work-experience" />

          {/*<div className="featuredCard">*/}
          <article className="beyond_limits">
            <h3 className="content featured">2018-2020 - Beyond Limits:</h3>
            <div className="content full horizontal_carousel lightbox">
              <div className="slides">
                <a href="/screenshots/bl/ist-1.png" data-title="">
                  <img src="/screenshots/bl/_thumb-ist-1.png" />
                </a>
                <a href="/screenshots/bl/aira-1.png" data-title="">
                  <img src="/screenshots/bl/_thumb-aira-1.png" />
                </a>
                <a href="/screenshots/bl/sm-1.png" data-title="">
                  <img src="/screenshots/bl/_thumb-sm-1.png" />
                </a>
                <a href="/screenshots/bl/sm-2.png" data-title="">
                  <img src="/screenshots/bl/_thumb-sm-2.png" />
                </a>
                <a href="/screenshots/bl/aira-2.png" data-title="">
                  <img src="/screenshots/bl/_thumb-aira-2.png" />
                </a>
                <a href="/screenshots/bl/aira-3.png" data-title="">
                  <img src="/screenshots/bl/_thumb-aira-3.png" />
                </a>
                <a href="/screenshots/bl/aira-4.png" data-title="">
                  <img src="/screenshots/bl/_thumb-aira-4.png" />
                </a>
                <a href="/screenshots/bl/sm-4.png" data-title="">
                  <img src="/screenshots/bl/_thumb-sm-4.png" />
                </a>
                <a href="/screenshots/bl/sm-3.png" data-title="">
                  <img src="/screenshots/bl/_thumb-sm-3.png" />
                </a>
                <a href="/screenshots/bl/ist-2.png" data-title="">
                  <img src="/screenshots/bl/_thumb-ist-2.png" />
                </a>
                <a href="/screenshots/bl/ist-3.png" data-title="">
                  <img src="/screenshots/bl/_thumb-ist-3.png" />
                </a>
                <a href="/screenshots/bl/ist-4.png" data-title="">
                  <img src="/screenshots/bl/_thumb-ist-4.png" />
                </a>
              </div>
            </div>
            <div className="description content">
              <p>
                Worked at an AI agency building automation tools and analytics dashboards for enterprise clients, especially for oil and gas industry. We built browser-based apps which
                queried/manipulated/rendered a lot of data in real time.
              </p>
              <p>
                Worked with brilliant CS majors, built admin dashboards and data visualizations. Worked a lot with React.JS, Vanilla JS, and D3 based graphing libraries. We built custom
                tools from scratch. Also used Vue.js and Angular 8. I was tasked with improving the UI of our software products, then adding features to meet tight deadlines. It was
                important to communicate efficiently and architect each app for easy refactoring in the future.
              </p>
            </div>
          </article>
          {/*</div>*/}

          <div dangerouslySetInnerHTML={{ __html: projects_past }} />
        </section>
      </ProjectsStyled>
    )
  }
}

const ProjectsStyled = styled.div`
  max-width: 100vw;
  overflow: hidden;
  .titleFont {
    font-weight: 800;
  }
  .description {
    margin-bottom: 1.125rem;
    &::after {
      content: "";
      display: block;
      clear: both;
    }
  }
  .top_caption {
    font-size: 1rem;
    margin-top: 1rem;
    margin-bottom: 1rem;
  }
  .beyond_limits {
    margin: 4.5rem 0;
    .horizontal_carousel {
      margin: 1rem 0;
      img {
        height: 15rem;
      }
    }
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
    @media (max-width: 1100px) {
      display: none;
    }
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
      margin-right: -1rem;
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
