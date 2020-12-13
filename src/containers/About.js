import React from "react"
import about_media from "src/html/about/about.html"
import App from "src/components/App"
// import CarouselAboutUs from "../components/carousels/AboutUs"

export default function () {
  return (
    <App className="pageAbout">
      <div dangerouslySetInnerHTML={{ __html: about_media }} />
    </App>
  )
}
