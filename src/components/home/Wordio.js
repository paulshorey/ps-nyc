import React from "react"
import styled from "styled-components"
// import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
// import { faChartPie } from "@fortawesome/pro-solid-svg-icons"

class Wordio extends React.Component {
  render() {
    return (
      <WordioStyled>
        <article className="full">
          <a name="besta" id="besta" className="a_target" />
          <h3>
            {/*<FA icon={faChartPie} className="x85" /> &thinsp;&thinsp;*/}
            2020 - Node.js APIs and React Apps:
          </h3>
          <div className="description">
            <p>
              <b className="titleFont">
                <a href="https://besta.domains" target="_blank">
                  Besta.domains
                </a>{" "}
                {/*<code className="color-medium vrsn">beta</code>{" "}*/}
              </b>
              - After working at an AI company for a couple years, I wanted try my hand at data and text analysis. This started out as a quick evening side project. It's now the best domain
              name suggestions engine in the industry. It doesn't just search. It actually generates new phrases using NLP! Also, an API to check domain availability of 100s of domains at a
              time. For this I created a load-balancer of 10 cloud servers. When you make a call to the API, it distributes the 100s of domains evenly accross the servers, for x10 faster
              response.&nbsp;
              <span className="nowrap">
                <span className="hide-small">
                  Get the APIs at{" "}
                  <a href="https://rapidapi.com/besta-domains/api/domain-suggestions-tlds" target="_blank">
                    rapidapi.com
                  </a>
                  .&nbsp;
                </span>

                <span className="nowrap hide-small">
                  Documentation:{" "}
                  <a href="https://besta.domains/api" target="_blank">
                    besta.domains/api
                  </a>
                  .&nbsp;
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
          <div className="description">
            <p>
              <b className="titleFont">
                <a href="https://wordio.co" target="_blank">
                  Wordio.co
                </a>{" "}
                {/*<code className="color-medium vrsn">alpha</code>{" "}*/}
              </b>
              - Wrote some linguistic APIs and algorithms, for AI, writing, or search applications. Compiled and edited a thesaurus of 300,000+ words. Find the root-word, parts-of-speech,
              sentiment analysis, abbreviations, contractions, singular/plural, etc. Get synonyms and related words, organized by sentiment. Word-breaking, tokenization, lemmatization and
              spellcheck on text inputs without spaces (useful for domain names).
              {/*Please contact me for a demo.*/}
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
              {/*APIs are currently private.*/} Demo:{" "}
              <a href="https://wordio.co" target="_blank">
                wordio.co
              </a>
            </p>
          </div>
          <div className="horizontal_carousel lightbox">
            <div className="slides">
              <a href="/screenshots/domains/domains.png" data-title="&nbsp;&nbsp; https://besta.domains - app to help you find available domain names &nbsp;&nbsp;">
                <img src="/screenshots/domains/_thumb-domains.png" />
              </a>
              <a href="/screenshots/domains/domain_wordbreak.png" data-title="&nbsp;&nbsp; Using my own linguistic tools to do word breaking / lemmatization / tokenization &nbsp;&nbsp;">
                <img src="/screenshots/domains/_thumb-domain_wordbreak.png" />
              </a>
              <a
                href="/screenshots/domains/domain_wip.png"
                data-title="&nbsp;&nbsp; This app (API) actually generates new phrases similar to your search term. See some code samples below. &nbsp;&nbsp;"
              >
                <img src="/screenshots/domains/_thumb-domain_wip.png" />
              </a>
              <a
                href="/screenshots/domains/domain_edit.png"
                data-title="&nbsp;&nbsp; Admin tool: to suggest relevant TLDs, we find related words of each TLD (.app, .haus, .red, .cat, .accountant) &nbsp;&nbsp;"
              >
                <img src="/screenshots/domains/_thumb-domain_edit.png" />
              </a>
              <a href="/screenshots/domains/domains_all_edit.png" data-title="&nbsp;&nbsp; Admin tool: look through each TLD, and find any that need more synonyms. &nbsp;&nbsp;">
                <img src="/screenshots/domains/_thumb-domains_all_edit.png" />
              </a>
              <a href="/screenshots/domains/word_view.png" data-title="&nbsp;&nbsp; https://wordio.co - thesaurus app (demo to browse our database) &nbsp;&nbsp;">
                <img src="/screenshots/domains/_thumb-word_view.png" />
              </a>
              <a href="/screenshots/domains/word_edit.png" data-title="&nbsp;&nbsp; Admin tool: edit the word - parts of speech, sentiment, synonyms, abbreviations, etc. &nbsp;&nbsp;">
                <img src="/screenshots/domains/_thumb-word_edit.png" />
              </a>
              <a href="/screenshots/domains/api_docs.png" data-title="&nbsp;&nbsp; Learn about endpoints, inputs, outputs, links to subscribe and to test in sandbox. &nbsp;&nbsp;">
                <img src="/screenshots/domains/_thumb-api_docs.png" />
              </a>
            </div>
          </div>
          <div className="horizontal_carousel lightbox" id="code_samples">
            <div className="slides">
              <a href="/screenshots/domains/wordio-co.png" data-title="&nbsp;&nbsp; https://wordio.co - API explorer. Test out the data without signing up for anything. &nbsp;&nbsp;">
                <img src="/screenshots/domains/_thumb-wordio-co.png" />
              </a>
              <a href="/screenshots/domains-code/nlp-be-api.png" data-title="&nbsp;&nbsp; Node.js Express API - each endpoint in its own folder - helper code in ES Modules &nbsp;&nbsp;">
                <img src="/screenshots/domains-code/_thumb-nlp-be-api.png" />
              </a>
              <a
                href="/screenshots/domains-code/nlp-be-markov-strings.png"
                data-title="&nbsp;&nbsp; Combining pairs of complementary words (from synonyms/derivations) to make a simple phrase (like adjective->noun) &nbsp;&nbsp;"
              >
                <img src="/screenshots/domains-code/_thumb-nlp-be-markov-strings.png" />
              </a>
              <a
                href="/screenshots/domains-code/nlp-be-add_original.png"
                data-title="&nbsp;&nbsp; Makes a matrix data structure from an array, then finds all possibilities and saves as a flat list &nbsp;&nbsp;"
              >
                <img src="/screenshots/domains-code/_thumb-nlp-be-add_original.png" />
              </a>
              <a
                href="/screenshots/domains-code/nlp-be-domains_lists.png"
                data-title="&nbsp;&nbsp; Domain suggestions created in a dictionary of collections. Converted to list. Rated. Sorted. &nbsp;&nbsp;"
              >
                <img src="/screenshots/domains-code/_thumb-nlp-be-domains_lists.png" />
              </a>
              <a href="/screenshots/domains-code/nlp-fe-Dom.png" data-title="&nbsp;&nbsp; Render each domain suggestion result - find status code (available/premium/etc). &nbsp;&nbsp;">
                <img src="/screenshots/domains-code/_thumb-nlp-fe-Dom.png" />
              </a>
              <a
                href="/screenshots/domains-code/nlp-fe-Doms.styled.png"
                data-title="&nbsp;&nbsp; Styled-components are awesome! Classic SCSS format, but use JavaScript variables and functions. Like this is_retina(). &nbsp;&nbsp;"
              >
                <img src="/screenshots/domains-code/_thumb-nlp-fe-Doms.styled.png" />
              </a>
              <a
                href="/screenshots/domains-code/nlp-fe-inputTld.png"
                data-title="&nbsp;&nbsp; Besta.domains React front-end - Input text field (and Select dropdown) user interaction events. &nbsp;&nbsp;"
              >
                <img src="/screenshots/domains-code/_thumb-nlp-fe-inputTld.png" />
              </a>
            </div>
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
