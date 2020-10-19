import React from "react"
import CarouselBeyondLimits from "src/components/carousels/BeyondLimits"
import styled from "styled-components"

export default class extends React.Component {
  render() {
    return (
      <ArticleStyled className="full">
        <h3>2018/2020 - Beyond Limits AI</h3>
        <CarouselBeyondLimits />
        <div className="description">
          <p>
            AI agency building automation tools and analytics dashboards, especially for oil and gas industry. We built
            browser-based apps which queried/manipulated/rendered a lot of data in real time.
          </p>
          <p>
            Worked with talented CS majors, built admin dashboards and data visualizations. Used Vue.js and Angular 8.
            Worked a lot with React.JS, Vanilla JS, and D3 based graphing libraries. We built custom tools from scratch.
            I was tasked with improving the UI of our software products, then adding features to meet tight deadlines.
            Constantly changing requirements made it important to communicate efficiently, and architect the app for
            easy refactoring in the future.
          </p>
        </div>
      </ArticleStyled>
    )
  }
}

const ArticleStyled = styled.article`
  .carousel {
    margin: 1rem 0 0.5rem;
  }
`
