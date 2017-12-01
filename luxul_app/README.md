&nbsp;    
### [~~Read all about our Luxul app and architecture in Confluence...~~*](http://confluence:8090/x/5oCI)
*New documentation coming soon  
&nbsp;  
### [Read about Create-React-App which is used to bootstrap a React app (ours and others) in Github...](https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md)  
&nbsp;  
&nbsp;  
&nbsp;  

# How our app is different from the standard Create-React-App  
1. **yarn** -- like **npm** but better
2. **prettier** -- integrated with **Webpack** to format the codebase whenever you `git commit`
3. **flow** -- simply add `// @flow` to the top of any file to add type-checking. [Read documentation for flow.](https://flow.org/en/docs/getting-started/)
4. **storybook** -- a separate environment like **jest**, but not for testing. It is a `sandbox` environment which acts as an `interactive documentation`
5. **styled-components** -- each React component has a styled-component js file next to it, which serves as its modular CSS. For example, `Top.js` will be complemented by `TopStyled.js`. In Top.js you will `import * as Styled from TopStyled`
6. **absolute imports** -- when `import`ing, absolute pathnames start at `/src` directory of the project instead of `/` root of computer, so whenever possible use absolute pathname instead of messy relative pathnames. So, don't do this: `../../../`.  
&nbsp;  
&nbsp;  
&nbsp;  

# Quick start our app:  
1. git clone git@git.luxul.com:ui/react-app.git
2. cd react-app
3. yarn install
4. yarn start  
&nbsp;  
&nbsp;  
&nbsp;  

# Available Scripts:  
* `yarn start` start up dev server on port 3000 unless otherwise specified
* `npm run storybook` runs on localhost:6006 unless otherwise specified
* `yarn test` will run all jest tests, etc.
* `npm run build` will create a production build of our app
* `npm run eject` !Important, NEVER RUN this or its yarn equivalent, as this would prevent us from upgrading to newer versions of C.R.A. in the future.  
&nbsp;  
&nbsp;  
&nbsp;  
