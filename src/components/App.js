import React from "react"
import Header from "src/components/Header"

export default function (props) {
  return (
    <div className={"App " + (props.className || "")}>
      <Header />
      {props.children}
      <p>&nbsp;</p>
      <Header />
      <p>&nbsp;</p>
    </div>
  )
}
