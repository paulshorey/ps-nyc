import React from "react"
import Page from "src/components/jobs/Jobs"
import { createGlobalStyle } from "styled-components"

const GlobalStyle = createGlobalStyle`
  body {
    overflow:hidden;
  }
`

export default function () {
  return (
    <>
      <GlobalStyle />
      <Page />
    </>
  )
}
