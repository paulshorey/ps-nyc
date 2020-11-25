import React, { useState, useEffect } from "react"
import { SearchStyled } from "./Search.styled.js"

export default function ({ srcText = "", onChange = () => {}, jobsFoundLength = 0 }) {
  /*
   * Local state updates when incoming props changes
   */
  const [tempText, set_tempText] = useState(srcText)
  useEffect(() => {
    set_tempText(srcText)
  }, [srcText])
  /*
   * View
   */
  return (
    <SearchStyled className="Search">
      <div className="fieldset">
        <input
          type="text"
          value={tempText}
          onChange={(event) => {
            set_tempText(event.target.value)
          }}
          onKeyPress={(event) => {
            console.warn("Input onKeyPress()", event.key)
            if (event.key === "Enter") {
              onChange(tempText)
            }
          }}
          onBlur={() => {
            set_tempText(srcText)
          }}
        />
        <button
          type="button"
          onClick={() => {
            onChange(tempText)
          }}
        >
          find
        </button>
      </div>
      <span className="found">found: {jobsFoundLength}</span>
    </SearchStyled>
  )
}

// import React, { useState } from "react"
//
// export default class Links extends React.Component {
//   constructor(props) {
//     super(props)
//     this.state = {
//       tempText: props.tempText || ""
//     }
//   }
//   render() {
//     const { srcText = "", onChange = () => {} } = this.props
//     return (
//       <fieldset>
//         <input
//           type="text"
//           value={tempText}
//           onChange={(event) => {
//             this.setState({ tempText: event.target.value })
//           }}
//         />
//         <button
//           type="button"
//           onClick={() => {
//             onChange(tempText)
//           }}
//         >
//           find
//         </button>
//       </fieldset>
//     )
//   }
// }
