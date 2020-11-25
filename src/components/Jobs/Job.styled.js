import styled from "styled-components"

export const JobStyled = styled.div`
  overflow: hidden;
  .meta {
    white-space: nowrap;
    text-overflow: ellipsis;
    font-size: 75%;
    position: relative;
    top: -0.25rem;
    opacity: 0.5;
  }
  span.highlighted {
    background: hsla(57deg,100%,70%, 0.75);
  }
`
