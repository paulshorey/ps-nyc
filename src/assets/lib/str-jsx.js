import React from "react"

/**
 * Find and highlight mentions of a word or phrase in a large body of text.
 *    Find phrases which mention a keyword. Highlight the keyword
 * @param src {string} - keyword / search term
 * @param text {string} - fulltext body in which to search for keyword
 * @returns {array} - array of JSX elements, to be used by React like <div>{phrases}</div>
 */
export function find_mentions(src, text) {
  let src_arr = src.split("|")
  let re_beforeAfter = "[\\p{L}\\d: ’'\"-]"
  let re = new RegExp("(" + re_beforeAfter + "{0,120})(" + src + ")(" + re_beforeAfter + "{0,240})", "ugim")
  // text
  text = text.replace(/{{.*?}}/g, " ")
  text = text.replace(/http.+html|\||\s|http/g, " ")
  text = text.replace(/([A-Z]{1})\./g, "$1")
  text = text.replace(/\.\.\.|\[\[|]]|===/g, "")
  text = text.replace(/([\p{L}]+)[\d]+/gu, "$1")
  text = text.replace(/%[0-9]{2}|\s+|\+|-/g, " ")
  text = text.replace(/  /g, "\n")

  // found
  let output = []
  let matches = text.match(re)
  if (!matches) return output
  let i = 0
  for (let found of matches) {
    found = found.toLowerCase()
    found = found.replace(/'s|’s/g, "*s")
    found = found.replace(/['’]+/g, "")
    found = found.replace(/\*/g, "’").trim()
    for (let str of src_arr) {
      found = found.replace(str, '<span class="highlighted">' + str + "</span>")
    }
    output.push(<span key={i} className="mention" dangerouslySetInnerHTML={{ __html: found }} />)
    i++
  }

  // format
  return output
}
