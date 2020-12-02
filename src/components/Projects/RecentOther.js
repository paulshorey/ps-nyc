import React from "react"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import { faGithub } from "@fortawesome/free-brands-svg-icons"
import styled from "styled-components"

class RecentOther extends React.Component {
  render() {
    return (
      <ProjectsStyled>
        <article className="full">
          <div className="description">
            <h3>
              <FA icon={faGithub} /> Open-source:
            </h3>
            <div>
              <p>
                <a href="">
                  <code>npm i universal-common-scripts</code>
                </a>{" "}
                - JavaScript functions. Like underscore/lodash, but more for data manipulation, filtering, sorting. For
                browser or Node.js
              </p>
              <p>
                <a href="">
                  <code>npm i colorful-console-logger</code>
                </a>{" "}
                - Universal console.log replacement. Adds color, and integrates with cloud-logging like LogDNA. For
                browser or Node.js
              </p>
            </div>
            <p>
              <b className="titleFont">
                <a href="https://flyswatter.tech" target="_blank">
                  FlySwatter.tech
                </a>
              </b>{" "}
              - Browser extension to auto-close unwanted popups, banners, cookie notifications, intrusive ads,
              newsletter promotions, etc. Anything that is CSS position:fixed, is fixed! Does not trigger a site's
              ad-blocker blocker. Finally, browse in peace.
            </p>
            <p>
              <b className="titleFont">
                <a href="http://notes.paulshorey.com" target="_blank">
                  Dev notes
                </a>
              </b>{" "}
              - Tutorials, recipes, tips for developers. Few years of JavaScript programming notes. When I come accross
              an interesting issue, I try to document it for others, or for myself in the future. Now working on adding
              general useful tips, and converting to "how to" articles.
              {/*Working on using a note-taking platform (Notion,*/}
              {/*GitBook) as a website CMS, to publish support documentation or knowldgebase on "site.com/docs" instead of*/}
              {/*"docs.site.com", for improved SEO.*/}
            </p>
            <p>
              <b className="titleFont">
                <a href="http://jobs.paulshorey.com" target="_blank">
                  JS jobs
                </a>
              </b>{" "}
              - Interface for technical users to search through mounds of content. Search using Regular Expressions. Can
              be easily adapted to other types of content like news, events, and research or legal articles. Quick proof
              of concept. Took a week to build, including data-mining. Made with React.
            </p>
          </div>
        </article>
      </ProjectsStyled>
    )
  }
}

export default RecentOther

const ProjectsStyled = styled.div`
  article {
    margin: 1.75rem 0 3.5rem 0;
    code {
      //text-shadow: 0 0 5px white;
      font-size: 80%;
      background: none;
      padding: 0;
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
