#
# Finally upgraded my homepage dev environment...


#
# Now including a react app, inline with the rest of this html
dev environment:
```
npm start
```
publish to server:
```
npm run build
serve -s build
```
Verify that the changes are there, and it looks good, then serve directly from the "build" folder.

#
# Contents
```
node app.js
```
This serves the site, from the "/build" folder, which is where this new React workflow saves compiled files.  
But, in reality, this node process is started and managed by a bash script:
```
bash _boot/app.sh
```
