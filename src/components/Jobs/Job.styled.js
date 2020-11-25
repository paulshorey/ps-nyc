import styled from "styled-components"

export const JobStyled = styled.div`
  overflow: hidden;
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
    .mention {
      &:before {
        content: "| ";
      }
      &:first-child:before {
        content: "";
      }
      &:after {
        content: " ";
      }
      &:last-child:after {
        content: "";
      }
    }
  }
`
