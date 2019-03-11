# GIT  
### Config  
#### Install ssh key on new device  
```bash  
echo "{paste your ssh key contents}" >> ~/.ssh/newssh  
chmod -R 600 ~/.ssh/newssh  
```  
  
#### then, every time the CLI starts:  
```bash  
eval "$(ssh-agent -s)"  
ssh-add ~/.ssh/newssh  
```  
#### set `~/.gitconfig` variables:  
```bash  
git config --global color.ui true  
git config --global user.name Paul\ Shorey  
git config --global user.email pshorey@beyond.ai  
git config --global push.default simple  
git config --global core.editor=ne  
git config --global submodule.recurse=true  
```  
Without `--global`, it edits local `./.git/config` file.  
  
  
## Best Practices  
  
#### pull (update)  
When updating your local codebase, but a team mate changed some lines on the remote codebase, **`git pull`** actually does a **`merge`**. This leaves a mess of post-merge commit messages in your commit history.  
* Try doing **`git pull --rebase`** which does not leave so many "merge" commits when working with others.  
* **or**, try `git stash` first, then `git pull`, then `git stash pop` to avoid having a merge/commit message for each pull operation.  
  
#### rebase  
**`git rebase -i HEAD~3`** # 3, or however many commits you'd like to rename/squash  
...