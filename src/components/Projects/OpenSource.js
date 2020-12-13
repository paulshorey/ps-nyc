import React from "react"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import { faGithub } from "@fortawesome/free-brands-svg-icons"
import styled from "styled-components"
// import { Link } from "gatsby"

class OpenSource extends React.Component {
  render() {
    return (
      <ProjectsStyled>
        <article className="full">
          <a name="open_source" id="open_source" className="a_target" />
          <h3>
            <FA icon={faGithub} /> 2020 - Open-Source projects:
          </h3>
          <div className="description">
            <p className="with_code">
              <a href="https://github.com/paulshorey/colorful-console-logger" target="_blank" className="code_link">
                npm i colorful-console-logger
              </a>{" "}
              &nbsp;Universal console.log replacement. Adds colors, trace, integrates with cloud-logging like LogDNA.
            </p>
            <p className="with_code">
              <a href="https://github.com/twodashes/universal" target="_blank" className="code_link">
                npm i @twodashes/universal
              </a>{" "}
              &nbsp;Created a utility JavaScript library like lodash. For data manipulation, filtering, sorting,
              text-analysis, requests, promises, error handling. Also @twodashes/browser for platform-specific functions
              like AJAX, URL, resolution, etc.
            </p>
            <p>
              <b className="titleFont">
                <a href="https://github.com/paulshorey/FlySwatterTech" target="_blank">
                  Browser extension
                </a>
              </b>{" "}
              - to{" "}
              <b className="titleFont">
                close popups, cookie/terms consent banners, floating advertisements, newsletter promotions,&nbsp;
              </b>
              etc. Works reliably without breaking the page, unlike others I've tried. Does not trigger news sites'
              ad-blocker blocker. Finally, browse in peace. Try it.
            </p>
            <p>
              <b className="titleFont">
                <a href="http://jobs.paulshorey.com" target="_blank">
                  Research portal
                </a>
              </b>{" "}
              - Proof of concept. Interface for technical users to search through mounds of content.{" "}
              <b className="titleFont">Search using Regular Expressions. </b>Can be easily adapted to other types of
              content like news, events, and research or legal articles. Took a week to build, including data-mining.
              Made with React.
            </p>
            <p>
              <b className="titleFont">
                <a href="http://notes.paulshorey.com" target="_blank">
                  Dev notes
                </a>
              </b>{" "}
              - Work in progress, recipes and tips for developers. Few years of JavaScript programming notes. When I
              come across an interesting issue, I try to document it for myself and others. Currently starting to
              organize notes and write "how to" articles.
              {/*Streamline a way to convert markdown files into HTML, to embed a*/}
              {/*knowledgebase into an existing website with your own branding, instead of hosting documentation on a*/}
              {/*separate subdomain.*/}
              {/*Working on using a note-taking platform (Notion,*/}
              {/*GitBook) as a website CMS, to publish support documentation or knowldgebase on "site.com/docs" instead of*/}
              {/*"docs.site.com", for improved SEO.*/}
            </p>
            <p className="">
              <b className="titleFont">
                <a href="https://github.com/paulshorey/ps/tree/master/static/js/horizontal_carousel" target="_blank">
                  Flexible horizontal carousel
                </a>
              </b>{" "}
              - The image carousels you see here. Built from scratch. No dependencies. Supports variable width content,
              and custom styles.
            </p>
          </div>
          {/*<div className="horizontal_carousel">*/}
          {/*  <div className="slides">*/}
          {/*    <a*/}
          {/*      href="/screenshots/domains/domains.png"*/}
          {/*      data-title="https://besta.domains - app to help you find an available domain name"*/}
          {/*    >*/}
          {/*      <img src="/screenshots/domains/_thumb-domains.png" />*/}
          {/*    </a>*/}
          {/*    <a*/}
          {/*      href="/screenshots/domains/domain_wordbreak.png"*/}
          {/*      data-title="Using my own linguistic tools to do word breaking / lemmatization / tokenization"*/}
          {/*    >*/}
          {/*      <img src="/screenshots/domains/_thumb-domain_wordbreak.png" />*/}
          {/*    </a>*/}
          {/*    <a href="/screenshots/domains/domain_wip.png">*/}
          {/*      <img src="/screenshots/domains/_thumb-domain_wip.png" />*/}
          {/*    </a>*/}
          {/*    <a href="/screenshots/domains/domain_edit.png">*/}
          {/*      <img src="/screenshots/domains/_thumb-domain_edit.png" />*/}
          {/*    </a>*/}
          {/*    <a href="/screenshots/domains/domains_all_edit.png">*/}
          {/*      <img src="/screenshots/domains/_thumb-domains_all_edit.png" />*/}
          {/*    </a>*/}
          {/*    <a href="/screenshots/domains/api_docs.png">*/}
          {/*      <img src="/screenshots/domains/_thumb-api_docs.png" />*/}
          {/*    </a>*/}
          {/*    <a href="/screenshots/domains/word_view.png">*/}
          {/*      <img src="/screenshots/domains/_thumb-word_view.png" />*/}
          {/*    </a>*/}
          {/*    <a href="/screenshots/domains/word_edit.png">*/}
          {/*      <img src="/screenshots/domains/_thumb-word_edit.png" />*/}
          {/*    </a>*/}
          {/*  </div>*/}
          {/*</div>*/}
          <div className="description">
            <p>
              I love making stuff! Coming from a fine art background, rather than computer-science, I focus on the end
              product and user experience. Of course I agree that code quality and maintainability is equaly important.
              Self-taught. Never done learning. Looking forward to collaborating, sharing ideas, facing new challenges.
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
      font-size: 0.95rem;
      font-weight: bold;
      letter-spacing: -0.025rem;
      border-bottom: solid 2px;
      line-height: 0.5rem;
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
