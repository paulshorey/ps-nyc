import React from "react"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import { faGithub } from "@fortawesome/free-brands-svg-icons/faGithub"
import styled from "styled-components"
// import Wordio from "./Wordio"
// import { Link } from "gatsby"

class OpenSource extends React.Component {
  render() {
    return (
      <ProjectsStyled className="content">
        <article>
          <h3 className="featured">
            <FA icon={faGithub} style={{ transform: "scaleX(1.125)" }} />
            &thinsp;&thinsp; Open-Source projects:
          </h3>
          <div className="description">
            <span className="imagesFloatRight lightbox">
              <a href="/screenshots/modules/cconsole.png">
                <img src="/screenshots/modules/_thumb-cconsole.png" style={{ height: "80px" }} />
              </a>
            </span>
            <p className="with_code">
              <a href="https://github.com/paulshorey/colorful-console-logger" target="_blank" className="code_link bold">
                npm&thinsp;<span className="packageIcon">📦</span>colorful-console-logger
              </a>
              <br />
              For NodeJS terminal. No dependencies. No setup required. Easily integrate with Cloud logging (LogDNA, etc). Visually group similar types of logs in the terminal. Show a concise
              file/line trace for each message - so you can actually find where it's originating without looking through the entire codebase.
            </p>
          </div>
          <div className="description">
            <span className="imagesFloatRight lightbox">
              <a href="/screenshots/modules/twodashes-universal.png">
                <img src="/screenshots/modules/_thumb-twodashes-universal.png" style={{ height: "80px" }} />
              </a>
            </span>
            <p className="with_code">
              <a href="https://github.com/twodashes/universal" target="_blank" className="code_link bold">
                npm&thinsp;<span className="packageIcon">📦</span>@twodashes/universal
              </a>
              <br />
              Started a universal JavaScript utility library like lodash. For data manipulation, filtering, sorting, text-analysis, requests, promises, error handling. Also{" "}
              <a href="https://github.com/twodashes/browser" target="_blank" className="code_link">
                @twodashes/browser
              </a>{" "}
              for platform-specific functions like AJAX, URL, resolution, etc.
            </p>
          </div>
          <div className="description">
            <span className="imagesFloatRight lightbox">
              <a href="/screenshots/modules/horizontal_carousel.png">
                <img src="/screenshots/modules/_thumb-horizontal_carousel.png" style={{ height: "80px" }} />
              </a>
            </span>
            <p className="with_code">
              <a href="https://github.com/paulshorey/horizontal_carousel" target="_blank" className="code_link bold">
                npm&thinsp;<span className="packageIcon">📦</span>horizontal_carousel
              </a>
              <br />
              Image carousels you see here. Made because I could not find any script out there which would easily support variable-width content. No dependencies. Import as a React/app
              module or from CDN for website.
            </p>
          </div>
          <div className="description">
            <span className="imagesFloatRight lightbox">
              <a href="/screenshots/modules/fly-swatter.png">
                <img src="/screenshots/modules/_thumb-fly-swatter.png" style={{ height: "80px" }} />
              </a>
            </span>
            <p>
              <b className="titleFont">
                <a href="https://github.com/paulshorey/FlySwatterTech" target="_blank">
                  🦟⚡ Browser extension
                </a>
              </b>{" "}
              <b className="titleFont">to close annoying popups, cookie/terms consent banners, floating advertisements, newsletter promotions,&nbsp;</b>
              etc. Works reliably without breaking the page, unlike others I've tried. Does not trigger news sites' ad-blocker blocker. Finally, browse in peace. Try it.
            </p>
          </div>
        </article>
        <article>
          <h3 className="featured">Code samples</h3>
          <div className="description">
            <span className="imagesFloatRight lightbox">
              <a href="/screenshots/modules/dogsdb.png">
                <img src="/screenshots/modules/_thumb-dogsdb.png" style={{ height: "80px" }} />
              </a>
            </span>
            <p>
              <b className="titleFont">
                <a href="https://dogs.paulshorey.com" target="_blank">
                  DogsDB
                </a>
              </b>{" "}
              - <b className="titleFont">NextJS React starter codebase.</b> Server-side generated routes and content for instant loading, like in a traditional PHP/Ruby website. Trying out
              some new front-end techniques. Uses{" "}
              <a href="https://github.com/paulshorey/DogsJS/tree/main/tests" target="_blank">
                Jest and Puppeteer to do functional testing
              </a>
              . Check out the{" "}
              <a href="https://github.com/paulshorey/DogsJS" target="_blank">
                README.md
              </a>
              . Next upgrade would be to use Cypress + Percy for visual regression testing.
            </p>
          </div>
          <div className="description">
            <span className="imagesFloatRight lightbox">
              <a href="/screenshots/modules/cocktailsdb.png">
                <img src="/screenshots/modules/_thumb-cocktailsdb.png" style={{ height: "80px" }} />
              </a>
            </span>
            <p>
              <b className="titleFont">
                <a href="https://cocktails.paulshorey.com" target="_blank">
                  CocktailsDB
                </a>
              </b>{" "}
              - another NextJS React starter codebase. Uses alaSQL to run a database in the front-end on the browser, for fast sorting/filtering. Uses experimental React bound components,
              custom select, and same testing as DogsDB.
            </p>
          </div>
          <div className="description">
            <span className="imagesFloatRight lightbox">
              <a href="/screenshots/modules/thumbnails-script.png">
                <img src="/screenshots/modules/_thumb-thumbnails-script.png" style={{ height: "80px" }} />
              </a>
            </span>
            <p>
              <b className="titleFont">
                <a href="https://github.com/paulshorey/FlySwatterTech" target="_blank">
                  Create thumbnail images
                </a>
              </b>{" "}
              in all folders, recursively, using Node.js. Quick custom script for the CLI. Screenshot shows an interesting programming issue, and how I solved it. More NodeJS code samples
              above under Wordio.co.
            </p>
          </div>
          <div className="description">
            <p>
              <b className="titleFont">
                <a href="https://github.com/paulshorey/minesweeper" target="_blank">
                  Minesweeper game
                </a>
              </b>{" "}
              uses a JavaScript Class to store the game state. React.js to visualize and interact with the user.
            </p>
          </div>
        </article>
        <article>
          <h3 className="featured">Experiments</h3>
          <div className="description">
            <span className="imagesFloatRight lightbox">
              <a href="/screenshots/jobs/senior-software-engineer.png">
                <img src="/screenshots/jobs/_thumb-senior-software-engineer.png" style={{ height: "80px" }} />
              </a>
            </span>
            <p>
              <b className="titleFont">
                <a href="http://jobs.paulshorey.com" target="_blank">
                  Research portal
                </a>
              </b>{" "}
              - An experiment. React app. Search using Regular Expressions. Job ad aggregator. Can be adapted to any other type of content like news, events, legal articles.
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
    .description {
      border-bottom: solid 1px #efefef;
      &:last-child {
        border: none;
      }
    }
    p {
      &.with_code {
        margin: 1rem 0;
      }
    }
    a.code_link {
      position: relative;
      top: -0.05rem;
      text-decoration: none !important;
      font-family: monospace;
      font-size: 1.125rem;
      letter-spacing: -0.025rem;
      border-bottom: solid 1px;
      line-height: 0.5rem;
      &.bold {
        font-weight: bold;
        border-bottom: solid 1.5px;
      }
      .packageIcon {
        //position: absolute;
        //left: -1.5rem;
        //top: 0.5rem;
        font-size: 0.95rem;
        position: relative;
        top: 0.15rem;
        left: -1px;
        padding-right: 0.2rem;
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
