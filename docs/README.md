# Paul's Web Development Notes  
1. **From a front-end perspective...** a repository of useful tips, tricks, shortcuts, and general knowledge about web application development, for new developers, and forgetful old ones.  
2. **This is an experiment.** I've been trying to find a decent solution for documenting small web projects. So far, this is a success! Very easy to edit (markdown files), very easy to collaborate (same repository as the project), and very easy to convert to html (`npm run docs`).  
<br />  
  
**This website was auto-generated**  
from [my repository](http://github.com/paulshorey/ps) `./docs` folder, using [paulshorey/markdown-folder-to-html](https://github.com/paulshorey/markdown-folder-to-html).  
<br />  
  
**If anyone wants to contribute**  
to this knowledgebase, and share ownership, please contact me! I'll be happy to move this to its own repository.  
<br /><br /><br />  
  
# This is a work in progress  
  
**Unfortunate issues:**  
* **Folders and files must be in alphabetical order.** So, naming is like writing poetry.  
* File names can have spaces, but a space in the filename prevents you from linking to the file from other markdown files (this is a markdown issue).  
  
  
**Todo:**  
* Fix mobile layout  
* When compiling .html files, to modify the original .md file... add double space at the end of every line (for Github-flavor compatibility). Currently implemented as a `git commit` hook, but needs to first remove spaces before adding new ones.  
* QC deep nested folders  
* Maybe fix underlying codebase to not convert filename strings to (a href="") elements  
* Experiment with this: https://markdowntomedium.com/  
