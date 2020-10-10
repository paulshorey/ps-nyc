/**
 * Configure your Gatsby site with this file.
 *
 * See: https://www.gatsbyjs.org/docs/gatsby-config/
 */

module.exports = {
  /* Your site config here */
  plugins: [
    "gatsby-plugin-sass",
    "gatsby-plugin-react-helmet",
    {
      resolve: `gatsby-plugin-styled-jsx`,
      options: {
        jsxPlugins: ["styled-jsx-plugin-sass"]
      }
    },
    "gatsby-plugin-styled-components"
  ]
}

/*
 * TODO:
 *  https://www.gatsbyjs.com/plugins/gatsby-plugin-offline/?=
 */
