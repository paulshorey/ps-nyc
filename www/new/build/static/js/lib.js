/*
  Throttle function
  * Ripped from NPM Underscore
*/
window.throttle = function (func, wait, options) {
  var timeout, context, args, result;
  var previous = 0;
  if (!options) options = {};

  var later = function later() {
    previous = options.leading === false ? 0 : Date.now();
    timeout = null;
    result = func.apply(context, args);
    if (!timeout) context = args = null;
  };

  var throttled = function throttled() {
    var now = Date.now();

    if (!previous && options.leading === false) previous = now;
    var remaining = wait - (now - previous);
    context = this;
    args = arguments;

    if (remaining <= 0 || remaining > wait) {
      if (timeout) {
        clearTimeout(timeout);
        timeout = null;
      }

      previous = now;
      result = func.apply(context, args);
      if (!timeout) context = args = null;
    } else if (!timeout && options.trailing !== false) {
      timeout = setTimeout(later, remaining);
    }

    return result;
  };

  throttled.cancel = function () {
    clearTimeout(timeout);
    previous = 0;
    timeout = context = args = null;
  };

  return throttled;
};

/*
	Load a script 
	* into the DOM, and execute it (from any URL - internal or external server)
	* RETURNS A PROMISE * which can be used to tell when the script has loaded.
*/
window.loadScript = function(url, loadAsynchronously) {
  return new Promise(function(resolve, reject) {
    // Adding the script tag to the head as suggested before
    var head = document.getElementsByTagName("head")[0];
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.async = loadAsynchronously || false;
    script.src = url;

    // Then bind the event to the callback function.
    // There are several events for cross browser compatibility.
    script.onreadystatechange = function() {
      resolve();
    };
    script.onload = function() {
      resolve();
    };

    // Fire the loading
    head.appendChild(script);
  });
};

/*
    "Deep" copy an object
    NOTE: THIS IS NOT RECURSIVE - only 2 layers deep
*/
window.deepCopy = function(state) {
  var newState = {};
  for (let prop in state) {
    let value = state[prop];
    if (typeof value === "object") {
      if (value instanceof Set) {
        newState[prop] = new Set([...value]);
      } else if (value instanceof Array) {
        newState[prop] = [...value];
      } else {
        newState[prop] = { ...value };
      }
    } else {
      newState[prop] = value;
    }
  }
  return newState;
};
