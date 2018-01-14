### Been a while since I made this... 
* myself or anyone else using this as a starter might need a refresher how to work with Node and Gulp...  
### 
 
### To run Develpment environment:
* use Node version 5 or 6 (doesn't work with v9, 7 and 8 not tested)
* "npm install" first, if haven't done so already
* "gulp watch" to run dev environment in background, and watch for changes to SASS, to convert to css
* or just "gulp" to run SASS compiler once
* then "npm start", to start the dev server
* note: you must manually open browser to http://localhost:2080, and whenever you make a change to html or css or js, you have to manually refresh the browser
### 

### To publish to Production:
* this is a very simple and quick site - nothing fancy
* simply run "gulp" to convert all SCSS to CSS, and it's ready to upload
* if you already ran "gulp watch" to make the change, then no more gulping is necessary
* public web server root is /www, you know, the folder that has index.html :)
### 


### Note:
* for clients/employers, of course, I set up a more comprehensive development/production environment, with everything easier and more user-friendly. I'm just familiar enough with this old setup to remember to do these steps. See paulshorey.com for source code links to better builds
### 
