# What's new:  
  
## My Website and Web Development Knowledgebase  
* **http://paulshorey.com** and **http://paulshorey.com/docs**  
Docs HTML website generated from markdown files in `./docs` folder.  
Website served statically by NginX along with a few client and old project sites.  
Currently using and contributing to `markdown-folder-to-html` project.  
<br />  
  
### Dev (test local changes)  
Shortcut: **`sh/run`** runs bash script  
```bash  
# first install node and npm  
# npm install;  
http-server www/paulshorey # or whatever site to test  
```  
<br />  
  
### Build docs (deploy local changes)  
Shortcut: **`sh/doc`** runs bash script  
```bash  
# first install node and npm  
# npm install;  
npm run docs;  
        # this is an npm package.json shortcut for the following:  
        # markdown-folder-to-html docs www/paulshorey/docs;  
```  
<br />  
  
### Publish (to server)  
Shortcut: **`sh/pub`** runs bash script:  
```bash  
# first setup GIT+SSH  
git add.;  
git commit -m 'comment';  
git push;  
# github webhook sends POST TO http://paulshorey.com:9999/_deploy  
        # which is caught by running node process on server, in _deploy.js  
        # it executes bash _deploy.sh, which does  `git pull` to get latest files  
```  
<br />  
