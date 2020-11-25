import styled from "styled-components"

export const JobFullStyled = styled.div`
  overflow: hidden;
  margin: 0.5rem 0 0;
  .title {
    white-space: nowrap;
  }
  .meta {
    white-space: nowrap;
    text-overflow: ellipsis;
    font-size: 0.75rem;
    position: relative;
    top: -0.25rem;
    opacity: 0.5;
  }
  span.highlighted {
    background: hsla(57deg, 100%, 70%, 0.75);
  }

  .mentions {
    margin: 0 0 1.5rem;
    .mention {
      border-bottom: solid 2px hsla(57deg, 100%, 70%, 0.75);
      margin: 0 0.5rem 0.5rem;
      &:first-child {
        margin-left: 0;
      }
      &:last-child {
        margin-right: 0;
      }
    }
  }
`
