import React from "react"
import about_media from "src/html/about/about.html"
// import gitbook_nav from "src/md/SUMMARY.md"
import Header from "src/components/Header"

export default class extends React.Component {
  render() {
    return (
      <>
        <Header />
        {/*<div dangerouslySetInnerHTML={{ __html: gitbook_nav }} />*/}
        <div dangerouslySetInnerHTML={{ __html: about_media }} />
      </>
    )
  }
}
