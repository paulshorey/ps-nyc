// custom typefaces
// import "typeface-quick"
// import "typeface-merriweather"
import "typeface-quicksand"

import "src/styles/variables.scss"
import "src/styles/reset.scss"
import "src/styles/classes.scss"

import "src/styles/etc.scss"
import "src/styles/header.scss"
import "src/styles/section.scss"
import "src/styles/responsive.scss"

// import "src/assets/fonts/taviraj.css"
// import "src/assets/fonts/spectral.css"
// import "src/assets/fonts/garamond.css"

// The following import prevents a Font Awesome icon server-side rendering bug,
// where the icons flash from a very large icon down to a properly sized one:
import "@fortawesome/fontawesome-svg-core/styles.css"
// Prevent fontawesome from adding its CSS since we did it manually above:
import { config } from "@fortawesome/fontawesome-svg-core"
config.autoAddCss = false /* eslint-disable import/first */

// Use Redux:
// import wrapWithProvider from "./wrap-with-provider"
// export const wrapRootElement = wrapWithProvider

// export const createPages = ({ actions }) => {
//   const { createRedirect } = actions
//   createRedirect({ fromPath: '/domains', toPath: '/domain', isPermanent: true })
//   createRedirect({ fromPath: '/', toPath: '/domain', isPermanent: false })
// }
