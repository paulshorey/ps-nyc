import React from "react"
import { JobStyled } from "./Job.styled.js"

export default class Links extends React.Component {
  constructor(props) {
    super(props)
  }

  shouldComponentUpdate(nextProps) {
    /*
     * ONLY UPDATE COMPONENT if it is selected/deselected, not if content changed.
     * To update content, re-build entire list of jobs at the container level.
     */
    return nextProps.className !== this.props.className
  }

  render() {
    const { job = {}, src = "", ...props } = this.props
    if (!job.title) return null
    return (
      <JobStyled {...props}>
        <h4 className="title">{job.title}</h4>
        {!!job.mentions && !!job.mentions.length && (
          <div className="meta mentions">{job.mentions.map((found) => found)}</div>
        )}
      </JobStyled>
    )
  }
}
