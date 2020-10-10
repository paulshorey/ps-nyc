import React from "react"
import blog_notion from "src/html/blog/notion.html"
import App from "src/components/App"

export default function () {
  return (
    <App>
      <div dangerouslySetInnerHTML={{ __html: blog_notion }} />
    </App>
  )
}
