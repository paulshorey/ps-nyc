import React from "react"

/**
 * Find and highlight mentions of a word or phrase in a large body of text.
 *    Find phrases which mention a keyword. Highlight the keyword
 * @param src {string} - keyword / search term
 * @param text {string} - fulltext body in which to search for keyword
 * @returns {array} - array of JSX elements, to be used by React like <div>{phrases}</div>
 */
export function find_mentions(src, text) {
  // find
  let phrases = []
  let matches = text.match(new RegExp("([\\w\\d: ’'\"-]{0,120})(" + src + ")([\\w\\d: ’'\"-]{0,240})", "gi"))
  // nothing found, return original
  if (!matches) return [phrases, text]
  // found
  let i = 0
  for (let phrase of matches) {
    let phrase_original = phrase
    let words = phrase.match(new RegExp(src, "gi"))
    for (let word of words) {
      if (!word || word.length < 4) continue
      // highlight word in phrase
      phrase = phrase.replace(word, '<span class="highlighted">' + word + "</span>")
    }
    // highlight phrase in full text
    text = text.replace(phrase_original, phrase)
    // save
    phrases.push(<span key={i} className="mention" dangerouslySetInnerHTML={{ __html: phrase.trim() }} />)
    i++
  }

  // format
  return [phrases, text]
}
