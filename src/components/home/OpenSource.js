import React from "react"
// import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
// import { faGithub } from "@fortawesome/free-brands-svg-icons/faGithub"
import styled from "styled-components"
// import Wordio from "./Wordio"
// import { Link } from "gatsby"

class OpenSource extends React.Component {
  render() {
    return (
      <ProjectsStyled className="content">
        <article>
          <h3>
            {/*<FA icon={faGithub} />*/}
            {/*&thinsp;&thinsp;*/}
            2020 - Open-Source projects + experiments:
          </h3>
          <div className="description">
            {/*<div className="horizontal_carousel">*/}
            {/*  <div className="slides">*/}
            {/*    <a*/}
            {/*      href="/screenshots/domains/domains.png"*/}
            {/*      data-title="&nbsp;&nbsp; https://besta.domains - app to help you find available domain names &nbsp;&nbsp;"*/}
            {/*    >*/}
            {/*      <img src="/screenshots/domains/_thumb-domains.png" />*/}
            {/*    </a>*/}
            <p className="with_code">
              <a href="https://github.com/paulshorey/colorful-console-logger" target="_blank" className="code_link bold">
                npm i colorful-console-logger
              </a>{" "}
              &nbsp;Universal console.log replacement. Adds colors, trace, integrates with cloud-logging like LogDNA.
            </p>
            <p className="with_code">
              <a href="https://github.com/twodashes/universal" target="_blank" className="code_link bold">
                npm i @twodashes/universal
              </a>{" "}
              &nbsp;Started a utility JavaScript library like lodash. For data manipulation, filtering, sorting, text-analysis, requests, promises, error handling. Also{" "}
              <a href="https://github.com/twodashes/browser" target="_blank" className="code_link">
                @twodashes/browser
              </a>{" "}
              for platform-specific functions like AJAX, URL, resolution, etc.
            </p>
            <p className="with_code">
              <a href="https://github.com/paulshorey/horizontal_carousel" target="_blank" className="code_link bold">
                npm i horizontal_carousel
              </a>{" "}
              - Image carousels you see here. Made because I could not find any script out there which would easily support variable-width content. No dependencies. Import as a React/app
              module or from CDN for website.
            </p>
            <p>
              <b className="titleFont">
                <a href="https://github.com/paulshorey/FlySwatterTech" target="_blank">
                  Browser extension
                </a>
              </b>{" "}
              <b className="titleFont">to close popups, cookie/terms consent banners, floating advertisements, newsletter promotions,&nbsp;</b>
              etc. Works reliably without breaking the page, unlike others I've tried. Does not trigger news sites' ad-blocker blocker. Finally, browse in peace. Try it.
            </p>
            <p>
              <span className="imagesFloatRight lightbox">
                <a href="/screenshots/jobs/senior-software-engineer.png">
                  <img src="/screenshots/jobs/_thumb-senior-software-engineer.png" />
                </a>
                <a
                  href="/screenshots/domains-code/npm-run-thumb.png"
                  data-title="&nbsp;&nbsp; Node script started by `npm run thumb` - makes a small thumbnail copy of all images in specified path (recursively). &nbsp;&nbsp;"
                >
                  <img src="/screenshots/domains-code/_thumb-npm-run-thumb.png" />
                </a>
              </span>
              <b className="titleFont">
                <a href="http://jobs.paulshorey.com" target="_blank">
                  Research portal
                </a>
              </b>{" "}
              - <b className="titleFont">Search using Regular Expressions. </b> Job ad aggregator. Can be adapted to any other type of content like news, events, academic and legal articles.
              Next iteration would perform RegExp search in ElasticSearch instead of in React.
            </p>
            <p>
              <b className="titleFont">
                <a href="http://notes.paulshorey.com" target="_blank">
                  Dev notes
                </a>
              </b>{" "}
              - Few years of JavaScript programming notes. When I come across an interesting issue, I try to document it for myself and others.
            </p>
            <p>
              <b className="titleFont">
                <a href="https://github.com/paulshorey/minesweeper" target="_blank">
                  Minesweeper game
                </a>
              </b>{" "}
              - JavaScript coding test - uses a JS Class to manage the data, and React for visualization and user interaction
            </p>
          </div>
          <div className="description" id="past_work">
            <p>
              {/*I'm always building something! Coming from a design background, self taught, I enjoy making the end product and best*/}
              {/*possible user experience. Of course code quality and maintainability are extremely important. I constantly*/}
              {/*strive to write better code, to learn more. Never done learning.*/}

              {/*Looking forward to collaborating, sharing ideas, learning from new colleagues, solving new challenges.*/}
              {/*Spent most of 2020 practicing full-stack web development, data science, documentation, and copywriting.*/}
              {/*These projects are works in progress. Currently adding unit tests and more complete documentation.*/}
            </p>
          </div>
        </article>
      </ProjectsStyled>
    )
  }
}

export default OpenSource

const ProjectsStyled = styled.div`
  article {
    margin: 1.75rem 0 3.5rem 0;
    p {
      &.with_code {
        margin: 1rem 0;
      }
    }
    a.code_link {
      position: relative;
      top: -0.095rem;
      text-decoration: none !important;
      font-family: monospace;
      font-size: 0.9rem;
      letter-spacing: -0.025rem;
      border-bottom: solid 1px;
      line-height: 0.5rem;
      &.bold {
        font-size: 1rem;
        font-weight: bold;
        border-bottom: solid 2px;
      }
    }
    h3 {
      svg {
        font-size: 95%;
        margin: 0.125rem 0.125rem 0 0;
      }
    }
    .description > div {
      margin: 1rem 0 0.75rem 0;
    }
  }
`
