# What's new:  
<br />  
  
## My Website and Web Development Knowledgebase  
* **http://paulshorey.com** and **http://paulshorey.com/docs**  
Docs HTML website generated from markdown files in `./docs` folder.  
Website served statically by NginX along with a few client and old project sites.  
Currently using and contributing to `markdown-folder-to-html` project.  
  
### Dev (test local changes)  
```bash  
# first install node and npm  
# and setup GIT+SSH  
# npm install;  
npm run docs;  
        # this is an npm package.json shortcut for the following:  
        # markdown-folder-to-html docs www/paulshorey/docs;  
http-server www/paulshorey # or whatever site to test  
```  
<br /><br />  
  
### Publish (deploy local changes)  
```bash  
# first install node and npm  
# and setup GIT+SSH  
# npm install;  
npm run docs;  
        # this is an npm package.json shortcut for the following:  
        # markdown-folder-to-html docs www/paulshorey/docs;  
git add.;  
git commit -m 'comment';  
git push;  
# github webhook sends POST TO http://paulshorey.com:9999/_deploy  
        # which is caught by running node process on server, in _deploy.js  
        # it executes bash _deploy.sh, which does  `git pull` to get latest files  
```  
<br /><br />  
  
  
  
