import React from "react"
import { QuoteStyled } from "./Quote.styled.js"

export default function ({ quo = {} }) {
  return <QuoteStyled>
    <h4>{quo.quote}</h4>
    <sup>{quo.author}</sup>
  </QuoteStyled>
}
