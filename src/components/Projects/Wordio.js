import React from "react"
import styled from "styled-components"

class Wordio extends React.Component {
  render() {
    return (
      <WordioStyled>
        <article className="full">
          <a name="besta" id="besta" className="a_target" />
          <h3>2020 - Micro-SaaS products:</h3>
          <div className="description">
            <p>
              <b className="titleFont">
                <a href="https://besta.domains" target="_blank">
                  Besta.domains
                </a>{" "}
                {/*<code className="color-medium vrsn">beta</code>{" "}*/}
              </b>
              - After working at an AI company for a couple years, I wanted to try building an AI product, working with
              NLP, text generation, text analysis. This started out as a quick evening side project. It's now the best
              domain name suggestions engine in the industry. I'll be promoting this in my spare time in 2021/2022.{" "}
              <span className="hide-small">Suggestions </span>API for registars/hosting companies is now ready to
              demo.&nbsp;
              <span className="nowrap hide-small">
                Documentation:{" "}
                <a href="https://besta.domains/api" target="_blank">
                  besta.domains/api
                </a>
                .&nbsp;
              </span>
              <span className="nowrap">
                <span className="hide-small">
                  Get the API:{" "}
                  <a href="https://rapidapi.com/besta-domains/api/domain-suggestions-tlds" target="_blank">
                    rapidapi.com
                  </a>
                  .{" "}
                </span>
                {/*<span className="hide-large">*/}
                {/*  Demo:{" "}*/}
                {/*  <a href="https://besta.domains" target="_blank">*/}
                {/*    besta.domains*/}
                {/*  </a>*/}
                {/*  .*/}
                {/*</span>*/}
              </span>
            </p>
          </div>
          <div className="horizontal_carousel">
            <div className="slides">
              <a
                href="/screenshots/domains/domains.png"
                data-title="https://besta.domains - app to help you find an available domain name"
              >
                <img src="/screenshots/domains/_thumb-domains.png" />
              </a>
              <a
                href="/screenshots/domains/domain_wordbreak.png"
                data-title="Using my own linguistic tools to do word breaking / lemmatization / tokenization"
              >
                <img src="/screenshots/domains/_thumb-domain_wordbreak.png" />
              </a>
              <a href="/screenshots/domains/domain_wip.png">
                <img src="/screenshots/domains/_thumb-domain_wip.png" />
              </a>
              <a href="/screenshots/domains/domain_edit.png">
                <img src="/screenshots/domains/_thumb-domain_edit.png" />
              </a>
              <a href="/screenshots/domains/domains_all_edit.png">
                <img src="/screenshots/domains/_thumb-domains_all_edit.png" />
              </a>
              <a href="/screenshots/domains/api_docs.png">
                <img src="/screenshots/domains/_thumb-api_docs.png" />
              </a>
              <a href="/screenshots/domains/word_view.png">
                <img src="/screenshots/domains/_thumb-word_view.png" />
              </a>
              <a href="/screenshots/domains/word_edit.png">
                <img src="/screenshots/domains/_thumb-word_edit.png" />
              </a>
            </div>
          </div>
          <div className="description">
            <a name="wordio" id="wordio" className="a_target" />
            <p>
              <b className="titleFont">
                <a href="https://wordio.co" target="_blank">
                  Wordio.co
                </a>{" "}
                {/*<code className="color-medium vrsn">alpha</code>{" "}*/}
              </b>
              - Wrote some linguistic APIs and algorithms, for AI, writing, or search applications. Compiled and edited
              a thesaurus of 300,000+ words. Find the root-word, parts-of-speech, sentiment analysis, abbreviations,
              contractions, singular/plural, etc. Get synonyms and related words, organized by sentiment. Word-breaking,
              tokenization, lemmatization and spellcheck on text inputs without spaces (useful for domain names). Please
              contact me for a demo.
              {/*Created some nifty open-source scripts{" "}*/}
              {/*<span*/}
              {/*  className="link"*/}
              {/*  onClick={() => {*/}
              {/*    let el = document.querySelector("#open_source")*/}
              {/*    !!el &&*/}
              {/*      el.scrollIntoView({*/}
              {/*        behavior: "smooth"*/}
              {/*      })*/}
              {/*  }}*/}
              {/*>*/}
              {/*  below*/}
              {/*</span>*/}
              {/*, to help perform data manipulation in JavaScript.*/}
              {/*APIs are currently private.*/}
              {/*Demo:{" "}*/}
              {/*<a href="https://wordio.co" target="_blank">*/}
              {/*  wordio.co*/}
              {/*</a>*/}
            </p>
          </div>
        </article>
      </WordioStyled>
    )
  }
}

export default Wordio

const WordioStyled = styled.div`
  .vrsn {
    zoom: 0.9;
    position: relative;
    top: -0.1rem;
  }
`
