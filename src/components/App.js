import React from "react"
import Header from "src/components/Header"

export default function (props) {
  return (
    <>
      <Header />
      {props.children}
    </>
  )
}
