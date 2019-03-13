  
* `ls` prints out contents of current directory  
* `pwd` see the full path of current directory  
  
* starting path with `~` searches user's Home directory  
* starting path with `/` searches the base/root of the computer  
  
starting with `/` points to the root (base) of the computer filesystem  
so, `/www` looks for `www` in the base, beginning of the computer  
only `www` looks for `www` in the current directory ONLY  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
#### Browsing and Running files:  
  
**`cd`** enter directory of choice, like this for example:  
```bash  
cd ~  
cd ..  
cd /tmp  
cd Documents  
cd /Volumes/Media/Photos\ 2018  
```  
**`open .`** open something (follow by path of file to open)  
        `open -t ~/.ssh/newssh.pub` open in default desktop text editor, outside of terminal  
  
*copy text file to memory:*  
**`cat ~/ssh/newssh.pub | pbcopy`**  
  
**`Ctrl C`** quit running process (to re-gain control of the CLI)  
**`fg`** resume suspended process, after accidentally doing `Ctrl X`  
<br /><br />  
  
  
#### Files and Folders:  
**`ls`** see contents of current directory  
**`ls -a`** see all contents, including hidden files/folders  
  
Editing files inside the terminal:  
**`vim Filename.txt`** "vim" is usually the default CLI text editor. Nice Editor is much nicer!  
**`Esc`**, then **`q!`**, then **`Enter`** exit vim without saving  
**`Esc`**, then **`wq`**, then **`Enter`** save changes, and exit  
  
Alternately, in Nice Editor:  
**`ne Filename.txt`**  
**`^s ^q`** save changes, and exit  
**`^q`**, then **`y`** to exit without saving changes (y was to confirm prompt)  
<br /><br />  
  
  
<br /><br />  
  
  
