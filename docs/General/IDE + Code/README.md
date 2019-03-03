# Try WebStorm  
  
### Lately, I've had trouble with both Sublime Text and Vs Code.  
  
**VsCode** just would not format JSX correctly, no matter what options I set. In **Sublime**, I could not enable "format on save" no matter what I did.  
  
WebStorm code formatting is much more sophisticated. You can still choose the preferences (tabs/spaces/2vs4, open or closed brackets, single/double quotes, etc).  
  
**WebStorm, when formatting, will indent your code, but it is more intelligent.** It will not fight your intentions.  
  
If you indent an if () round bracket on multiple lines, it will not squeeze them all into the same line again. If you put an HTML/JSX tag across multiple lines, it will not squeeze them to one. And vice versa. You can still have long if() and <html> code on one line. It is up to you.  
  
**This is extremely important, because it**  
1. keeps the file readable and standard, for **`Git Diff`**  
2. keeps you and your team mates sane by allowing you to code the way that makes sense for that particular piece of logic, instead of conforming all code to the same formatting rules.  
  
It's hard to explain, it just works. Just try it.  
  
### Another benefit...  
  
It has several more sophisticated features - ones you would have to spend a long time finding and configuring just right in open source editors.  
  
Like, when you re-name a file or folder, it will search all the source code in the project, and rename any references to that file, to prevent broken links.  
  
  
