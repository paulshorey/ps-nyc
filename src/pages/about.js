import React from "react"
import about_media from "src/html/about/about.html"

export default function () {
  return <div dangerouslySetInnerHTML={{ __html: about_media }} />
}
