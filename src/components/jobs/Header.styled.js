import styled from "styled-components"

export const HeaderStyled = styled.header`
  z-index: 99;
  display: flex;
  padding: 0;
  margin: 0;
  align-items: center;
  background: #f49d06;
  box-shadow: 2px 3px 4px 1px rgba(0, 0, 0, 0.2);
  /*
   * For mobile - easy layout fix - user must scroll:
   */
  white-space: nowrap;
  overflow: auto;
  > * {
    padding: 0;
    margin: 0.5rem 1rem;
    font-size: 1rem;
    display: inline-block;
    color: white;
    &:first-child {
      flex-grow: 1;
    }
  }
  a {
    color: white;
  }
  svg {
    vertical-align: -0.2345rem;
  }
`
