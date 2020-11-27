import React, { useState, useEffect } from "react"
import { SearchStyled } from "./Search.styled.js"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
import {
  faQuestionCircle as faQuestionCircleLight,
  faHandPointLeft as faHandPointLeftLight
} from "@fortawesome/pro-regular-svg-icons"

export default function ({ reHighlight = "", reExclude = "", onChange = () => {}, jobsFoundLength = 0 }) {
  /*
   * Local state updates when incoming props changes
   */
  const [showListChecked, set_showListChecked] = useState("new")
  const [inputExclude, set_inputExclude] = useState(reExclude)
  const [inputHighlight, set_inputHighlight] = useState(reHighlight)
  useEffect(() => {
    set_inputExclude(reExclude)
    set_inputHighlight(reHighlight)
  }, [reHighlight, reExclude])
  /*
   * User submit
   */
  const submitChanges = function (changedState) {
    let toChange = {
      reExclude: typeof changedState.reExclude !== "undefined" ? changedState.reExclude : reExclude,
      reHighlight: typeof changedState.reHighlight !== "undefined" ? changedState.reHighlight : reHighlight
    }
    if (toChange.reExclude === reExclude && toChange.reHighlight === reHighlight) return
    onChange(toChange)
  }
  /*
   * View
   */
  return (
    <SearchStyled className="Search">
      <div className="form">
        <div className="fieldset radio">
          {["new", "saved", "ignored", "applied"].map((val) => (
            <span
              key={val}
              onClick={() => {
                set_showListChecked(val)
              }}>
              <input
                type="radio"
                name={"showList"}
                value={val}
                defaultChecked={showListChecked === val}
              />
              <span className="radioStyled" />
              <label>{val}</label>
            </span>
          ))}
        </div>
        <div className="fieldset text">
          <input
            type="text"
            value={inputExclude}
            onChange={(event) => {
              set_inputExclude(event.target.value)
            }}
            onKeyPress={(event) => {
              if (event.key === "Enter") {
                submitChanges({ reExclude: inputExclude })
              }
            }}
            onBlur={() => {
              submitChanges({ reExclude: inputExclude })
            }}
          />
          <span className="button">exclude</span>
        </div>
        <div className="fieldset text">
          <input
            type="text"
            value={inputHighlight}
            onChange={(event) => {
              set_inputHighlight(event.target.value)
            }}
            onKeyPress={(event) => {
              if (event.key === "Enter") {
                submitChanges({ reHighlight: inputHighlight })
              }
            }}
            onBlur={() => {
              submitChanges({ reHighlight: inputHighlight })
            }}
          />
          <span className="button">find</span>
        </div>
      </div>
      <div className="found">
        found {jobsFoundLength} results:
        {/*<p>*/}
        {/*  <a href="">?</a>*/}
        {/*</p>*/}
      </div>
    </SearchStyled>
  )
}

// import React, { useState } from "react"
//
// export default class Links extends React.Component {
//   constructor(props) {
//     super(props)
//     this.state = {
//       inputHighlight: props.inputHighlight || ""
//     }
//   }
//   render() {
//     const { reHighlight = "", onChange = () => {} } = this.props
//     return (
//       <fieldset>
//         <input
//           type="text"
//           value={inputHighlight}
//           onChange={(event) => {
//             this.setState({ inputHighlight: event.target.value })
//           }}
//         />
//         <button
//           type="button"
//           onClick={() => {
//             submitChanges({reHighlight:inputHighlight})
//           }}
//         >
//           find
//         </button>
//       </fieldset>
//     )
//   }
// }
