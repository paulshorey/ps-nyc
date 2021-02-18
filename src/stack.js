

// Q. write a function that determines if the input string is syntactically valid. "()" --> true, ")(" --> false
// ()[]<>{}

//


function validateStr(str){
  if (typeof str!== "string") return false
  // check every type of parenthesis open/close string
  let stack = []
  let opening = {
    "(":")",
    "[":"]",
    "<":">",
    "{":"}"
  }
  let closing = {
    ")":"(",
    "]":"[",
    ">":"<",
    "}":"{"
  }
  for (let char of str) {
    // open
    if (opening[char]) {
      stack.push(char)
    }
    // close
    if (closing[char]) {
      let previousChar = stack[stack.length-1] // last encountered bracket
      let openingChar = closing[char] // find corresponding opening bracket
      if (stack.length && previousChar === openingChar) {
        // correctly closed previously opened bracket
        stack.pop()
      } else {
        // no corresponding opening bracket for this closing one
        return false
      }
    }
  }
  // not enough closed
  if (stack.length>0) {
    return false
  }
  // everything was opened/closed correctly
  return true
}

console.warn('valid?', validateStr('(){)}<>[]'))
