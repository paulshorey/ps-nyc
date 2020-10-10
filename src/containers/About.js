import React from "react"
import about_media from "src/html/about/media.html"
import App from "src/components/App"

export default function () {
  return (
    <App>
      <div dangerouslySetInnerHTML={{ __html: about_media }} />
    </App>
  )
}
