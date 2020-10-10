import React from "react"

import foot from "src/html/foot.html"
import head from "src/html/head.html"

const PRODUCTION = process.env.GATSBY_ACTIVE_ENV === "production"

export const onPreRenderHTML = ({
  getHeadComponents,
  replaceHeadComponents,
  getPostBodyComponents,
  replacePostBodyComponents,
}) => {
  // alter <head>
  const headComponents = getHeadComponents()
  // INSERT INTO BOTTOM OF <head>
  headComponents.push(<div dangerouslySetInnerHTML={{ __html: head }} />)
  // save <head>
  replaceHeadComponents(headComponents)
  // alter <body>
  const bodyComponents = getPostBodyComponents()
  // INSERT INTO TOP OF <body>
  // INSERT INTO BOTTOM OF <body>
  bodyComponents.push(
    <>
      <div dangerouslySetInnerHTML={{ __html: foot }} />

      <script src="/assets/js/cycle/cycle.min.js" />
      <script src="/assets/the_wilderness_downtown/canvas.js" />
    </>
  )
  // done altering <html>
  replacePostBodyComponents(bodyComponents)
}
