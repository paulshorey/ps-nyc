import styled from "styled-components"

export const SearchStyled = styled.div`
  border: none;
  margin: 0.875rem -1px 0.5rem;
  padding: 0 0.67rem 0.5rem;
  .form {
    flex-grow: 1;
  }
  .fieldset {
    display: flex;
    margin: 0 0 0.33rem;
    input,
    .button {
      border: none;
      border-radius: 0.5rem;
      margin: 0;
    }
    input {
      &[type="text"] {
        flex-grow: 1;
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
        padding: 0.4rem 0.1rem 0.4rem 0.5rem;
        box-shadow: 1px 1px 4px hsl(0deg, 0%, 70%) inset;
      }
    }
    .button {
      border-top-left-radius: 0;
      border-bottom-left-radius: 0;
      padding: 0.3rem 0.5rem 0.3rem 0.4rem;
      box-shadow: 2px 2px 4px #ccc;
      //text-decoration: underline;
      cursor: pointer;
      color: white;
      background: #f49d06;
      font-size: 1rem;
    }
  }
  .fieldset.radio {
    margin-bottom: 0.45rem;
  }
  .found {
    margin: 0.5rem 0 0 0;
    font-size: 0.75rem;
    vertical-align: middle;
    color: #999;
  }
`
