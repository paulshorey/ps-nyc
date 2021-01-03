import React from "react"
import about_media from "src/html/about/about.html"
import Header from "../components/Header"

export default function () {
  return (
    <>
      <Header />
      <div dangerouslySetInnerHTML={{ __html: about_media }} />
    </>
  )
}
