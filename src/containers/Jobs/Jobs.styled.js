import styled from "styled-components"

export const JobsStyled = styled.div`
  background: white;
  font-family: sans-serif;
  fieldset {
    border: none;
    margin: 1rem -1px 0.5rem;
    padding: 0;
  }
  .middle {
    display: flex;
    height: 100vh;
    .side {
      color: #2557a7;
      position: relative;
      max-width: 360px;
      padding: 0 0.75rem;
      overflow: auto;
      div {
        padding: 0 0.5rem;
        cursor: pointer;
        .highlighted {
          background: hsla(57deg, 100%, 70%, 0.75);
        }
      }
      form {
        padding: 0 0.5rem;
      }
    }
    .main {
      position: relative;
      flex-grow: 1;
      min-width: 720px;
      overflow: scroll;
      .full_job_text {
        box-sizing: border-box;
        position: absolute;
        top: 0;
        right: 0;
        width: 100%;
        height: 100%;
        padding: 0.5rem 1.5rem;
      }
      .quotes {
        text-align: center;
        padding: 0 2.5rem;
      }
    }
  }
`
