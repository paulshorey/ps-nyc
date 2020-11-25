import styled from "styled-components"

export const SearchStyled = styled.div`
  border: none;
  margin: 1rem -1px 0.5rem;
  padding: 0;
  min-width: 240px;
  max-width: 360px;
  display: flex;
  .fieldset {
    flex-grow: 1;
  }
  .found {
    font-size: 0.875rem;
    opacity: 0.75;
    vertical-align: middle;
    white-space:nowrap;
  }
`
