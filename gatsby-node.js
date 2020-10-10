exports.onCreateWebpackConfig = ({
  stage,
  // rules,
  // loaders,
  plugins,
  actions,
}) => {
  actions.setWebpackConfig({
    module: {
      rules: [
        {
          test: /\.html$/,
          loader: "html-loader",
        },
        // {
        //   loader: "markdown-loader",
        //   options: {
        //     pedantic: true,
        //   }
        // }
      ],
    },
    plugins: [
      plugins.define({
        __DEVELOPMENT__: stage === `develop` || stage === `develop-html`,
      }),
    ],
  })
}
