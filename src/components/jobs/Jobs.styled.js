import styled from "styled-components"

export const JobsStyled = styled.div`
  font-family: sans-serif;
  fieldset {
    border: none;
    margin: 1rem -1px 0.5rem;
    padding: 0;
  }
  .middle {
    display: flex;
    height: 100vh;
    overflow: auto;
    .side {
      color: #2557a7;
      position: relative;
      // min/max width to stop from being flexible (parent is display:flex)
      min-width: 360px;
      max-width: 360px;
      padding: 0.25rem 0;
      overflow: auto;
      background: hsl(67deg, 33%, 99%);
      box-shadow: 2px 4px 6px 4px rgba(0, 0, 0, 0.075);
      .Links {
        padding: 0;
        cursor: pointer;
      }
    }
    .main {
      position: relative;
      flex-grow: 1;
      min-width: 720px;
      overflow: scroll;
      margin: 0.25rem 0 3.5rem;
      .full_job_text {
        box-sizing: border-box;
        position: absolute;
        top: 0;
        right: 0;
        width: 100%;
        height: 100%;
        padding: 0.5rem 1.5rem;
      }
      .legend {
        margin: 0.8rem 1.6rem 1.4rem;
      }
      .quotes {
        text-align: center;
        padding: 0 2.5rem;
        opacity: 0.5;
      }
    }
  }
`
