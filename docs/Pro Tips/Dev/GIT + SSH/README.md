# Best Practices  
  
#### pull (update)  
When updating your local codebase, but a team mate changed some lines on the remote codebase, **`git pull`** actually does a **`merge`**. This leaves a mess of post-merge commit messages in your commit history.  
* Try doing **`git pull --rebase`** which does not leave so many "merge" commits when working with others.  
* **or**, try `git stash` first, then `git pull`, then `git stash pop` to avoid having a merge/commit message for each pull operation.  
  
#### rebase  
**`git rebase -i HEAD~3`** # 3, or however many commits you'd like to rename/squash  
  
<br />  
  
# Shortcuts (automate your commands)  
See the CLI -> Shortcuts doc