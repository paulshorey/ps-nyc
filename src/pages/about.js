import React from "react"
import about_media from "src/html/about/about.html"
import Header from "../components/Header"
import HorizontalCarousel from "horizontal_carousel/esm"

export default class extends React.Component {
  componentDidMount() {
    /*
     * Carousels
     */
    this.crefs = []
    let els = document.querySelectorAll(".horizontal_carousel")
    if (els) {
      this.crefs.push(new HorizontalCarousel(document.querySelectorAll(".horizontal_carousel")))
    }
  }
  componentWillUnmount() {
    for (let ref of this.crefs) {
      if (!ref || !ref.end) continue
      ref.end()
    }
  }
  render() {
    return (
      <>
        <Header />
        <div dangerouslySetInnerHTML={{ __html: about_media }} />
      </>
    )
  }
}
