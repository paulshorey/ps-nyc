import React from "react"
import App from "src/components/App"
import styled from "styled-components"
import projects_current from "src/html/projects/current.html"
import projects_past from "src/html/projects/past.html"

export default function () {
  return (
    <App>
      <ProjectsStyled className="content">
        <hr className="bit_wider" />

        <div className="bit_wider">
          <h2>
            <a href="">
              {" "}
              <span className="icon">🌇</span> Photos &amp; Hobbies{" "}
            </a>
          </h2>
          {/* <h2>*/}
          {/* <a href=""> <span class="icon">📓</span> Writing </a>*/}
          {/*</h2>*/}
          <h2>
            <a href="">
              {" "}
              <span className="icon">🤖</span> Programming Notes{" "}
            </a>
          </h2>
          <h2>
            <a href="">
              {" "}
              <span className="icon">👨‍💻</span> Experience{" "}
            </a>
          </h2>
          <h2>
            <span className="icon">🚀</span> Recent Developments:
          </h2>
        </div>

        <div dangerouslySetInnerHTML={{ __html: projects_current }} />

        <div className="bit_wider">
          <a href="">
            <span className="icon">👨‍💻</span>Experience:
          </a>
        </div>

        <div dangerouslySetInnerHTML={{ __html: projects_past }} />
      </ProjectsStyled>
    </App>
  )
}

const ProjectsStyled = styled.section`
`
