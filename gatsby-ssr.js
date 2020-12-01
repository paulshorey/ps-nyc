import React from "react"
// // to use Redux:
// import wrapWithProvider from "./gatsby-wrap-provider"
// export const wrapRootElement = wrapWithProvider

// import foot from "src/html/foot.html"

// import foot from "src/html/foot.html"
// import head from "src/html/head.html"

const PRODUCTION = process.env.GATSBY_ACTIVE_ENV === "production"

export const onPreRenderHTML = ({
  getHeadComponents,
  replaceHeadComponents,
  getPostBodyComponents,
  replacePostBodyComponents
}) => {
  // alter <head>
  const headComponents = getHeadComponents()
  // INSERT INTO BOTTOM OF <head>
  // headComponents.push(<div dangerouslySetInnerHTML={{ __html: head }} />)
  headComponents.push(
    <>
      <title>Paul Shorey</title>
      <meta name="referrer" content="origin" />
      <meta name="description" content="Web development - web design - UI / UX" />
      <meta name="keywords" content="Paul Shorey, HTML5, Javascript, AngularJS, SASS" />
      <meta property="og:title" content="Paul Shorey | Web development" />
      <meta property="og:site_name" content="Paul Shorey" />
      <meta property="og:description" content="Web design and development" />
      <meta property="og:type" content="website" />
      <meta property="og:url" content="/" />

      {/* <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="pragma" content="no-cache" /> */}

      <link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />

      <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width" />
      {/*<script src="/assets/js/mailchimp.js"></script>*/}

      <script src="/assets/js/jquery.js"></script>
      <script src="/assets/js/jquery.cycle.js"></script>

      <script src="/assets/js/uuiCarousel/uuiCarousel.js"></script>
      <link href="/assets/js/uuiCarousel/uuiCarousel.css" rel="stylesheet" type="text/css" />

      <link rel="stylesheet" type="text/css" href="/assets/the_wilderness_downtown/style.css" />
      <div id="birdsCanvas">
        <div id="birdsCanvas_bg">
          {/*
      I did not make this interactive flying birds background. I appropriated it from a very cool Google Chrome experiment from 2010 called "The Wilderness Downtown", designed/directed by Chris Milk, and developed by some smart guys at Google, for Arcade Fire\'s song "We Used to Wait" and album "The Suburbs".
      The real thing is much more than just the birds! It's been forgotten after all these years. So, I adopted some of their birds for my own site. See the experiment: (http://www.thewildernessdowntown.com). Read about it: (https://en.wikipedia.org/wiki/The_Wilderness_Downtown).
    */}
        </div>
      </div>
    </>
  )
  // save <head>
  replaceHeadComponents(headComponents)
  // alter <body>
  const bodyComponents = getPostBodyComponents()
  // INSERT INTO TOP OF <body>
  // INSERT INTO BOTTOM OF <body>
  // bodyComponents.push(<div dangerouslySetInnerHTML={{ __html: foot }} />)
  bodyComponents.push(
    <>
      {/* Google captcha/analytics */}
      <script src="https://www.google.com/recaptcha/api.js?render=6LfSN-MUAAAAAOxMUojSlBxkicjSeX1YLW8ds8C1"></script>

      {/*
      CUSTOM SITE STYLE AND WIDGETS
     */}
      <link rel="stylesheet" type="text/css" href="/assets/icomoon/style.css" />
      <script src="/assets/js/init.js"></script>
      <script src="/assets/js/uuiModal/uuiModal.js"></script>
      <link href="/assets/js/uuiModal/uuiModal.css" rel="stylesheet" type="text/css" />

      {/*
      ELFSIGHT CONTACT FORM
     */}
      <script src="https://apps.elfsight.com/p/platform.js" defer></script>
      <div className="elfsight-app-bcf06b3b-b3f9-47c0-a7f0-11e2e4a2418f"></div>

      {/*
       * PHOTO SWIPE
       */}
      <link rel="stylesheet" href="/js/photoswipe/photoswipe.css" />
      <link rel="stylesheet" href="/js/photoswipe/default-skin/default-skin.css" />
      <script src="/js/photoswipe/photoswipe.min.js"></script>
      <script src="/js/photoswipe/photoswipe-ui-default.min.js"></script>

      {/* Root element of PhotoSwipe. Must have class pswp. */}
      <div className="pswp" tabIndex="-1" role="dialog" aria-hidden="true">
        {/*Background of PhotoSwipe. 
         It's a separate element as animating opacity is faster than rgba().*/}
        <div className="pswp__bg"></div>

        {/*Slides wrapper with overflow:hidden.*/}
        <div className="pswp__scroll-wrap">
          {/*Container that holds slides. 
            PhotoSwipe keeps only 3 of them in the DOM to save memory.
            Don't modify these 3 pswp__item elements, data is added later on.*/}
          <div className="pswp__container">
            <div className="pswp__item"></div>
            <div className="pswp__item"></div>
            <div className="pswp__item"></div>
          </div>

          {/*Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed.*/}
          <div className="pswp__ui pswp__ui--hidden">
            <div className="pswp__top-bar">
              {/* Controls are self-explanatory. Order can be changed.*/}

              <div className="pswp__counter"></div>

              <button className="pswp__button pswp__button--close" title="Close (Esc)"></button>

              <button className="pswp__button pswp__button--share" title="Share"></button>

              <button className="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

              <button className="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

              {/*Preloader demo https://codepen.io/dimsemenov/pen/yyBWoR*/}
              {/*element will get class pswp__preloader--active when preloader is running*/}
              <div className="pswp__preloader">
                <div className="pswp__preloader__icn">
                  <div className="pswp__preloader__cut">
                    <div className="pswp__preloader__donut"></div>
                  </div>
                </div>
              </div>
            </div>

            <div className="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
              <div className="pswp__share-tooltip"></div>
            </div>

            <button className="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>

            <button className="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>

            <div className="pswp__caption">
              <div className="pswp__caption__center"></div>
            </div>
          </div>
        </div>
      </div>
    </>
  )
  // done altering <html>
  replacePostBodyComponents(bodyComponents)
}
