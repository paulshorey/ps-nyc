import React from "react"
import about_media from "src/html/about/about.html"
import Header from "../components/Header"
import HorizontalCarousel from "horizontal_carousel/src"

export default class extends React.Component {
  componentDidMount() {
    /*
     * Carousels
     */
    this.hc_refs = []
    let el = document.querySelector(".horizontal_carousel")
    if (el) {
      this.hc_refs.push(new HorizontalCarousel(el))
    }
  }
  componentWillUnmount() {
    for (let ref of this.hc_refs) {
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
