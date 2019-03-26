### ~/.zprofile  
```  
#!/usr/bin/env bash  
#alwaysexport PATH=/usr/local/bin:$PATH;  
  
source ~/.aliases.sh;  
  
alias sublime='open -a /Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text';  
alias vscode='open -a /Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron';  
alias webstorm='open -a /Applications/WebStorm.app/Contents/MacOS/webstorm';  
alias ws='open -a /Applications/WebStorm.app/Contents/MacOS/webstorm';  
  
cdls() { cd "$@" && ls; }  
cdla() { cd "$@" && la; }  
  
eval "$(ssh-agent -s)";  
ssh-add ~/.ssh/newssh;  
  
export EDITOR=ne  
export PATH=$PATH:$(npm bin -g)  
  
#  
# GO LANG  
  
export GOPATH=$HOME/go  
export GOROOT=/usr/local/opt/go/libexec  
  
export PATH=$PATH:${GOPATH}/bin  
export PATH=$PATH:${GOROOT}/bin  
  
export sand=${GOPATH}/src/sandman;  
alias cdsand='cd ${sand}';  
```  
  
  
### ~/.functions.sh  
```  
#!/usr/bin/env bash  
  
# DOCKER STOP/REMOVE ALL  
function docker_killall() {  
    docker stop $(docker ps -a -q);  
    docker rm $(docker ps -a -q);  
}  
function docker_list() {  
    docker container ls;  
}  
function docker_cleanup() {  
    docker rmi $(docker images -f "dangling=true" -q);  
}  
function docker_run_perfecta() {  
    docker run \  
      --name=perfecta \  
      --rm \  
      -v /ai/perfecta-web-ide/data:/home/perfecta/perfecta-web-ide/data \  
      -p 8000:80 \  
      -d \  
      docker-registry.beyond.ai/pwi  
}  
  
# RESET TO HEAD  
function yx() {  
	# reset  
	echo resetting to HEAD;  
	git add .;  
	git reset HEAD -\-hard; # revert to remote  
	git pull;  
	# log  
	echo "\n\n";  
	echo "STATUS:";  
	git status;  
}  
  
# UNDO LAST COMMIT  
function yxx() {  
	echo resetting to previous commit;  
	git add .;  
	git reset HEAD^ -\-hard;  
	git pull;  
}  
function yz() {  
	git reset HEAD~1; # undo LOCAL commit which has not been pushed  
}  
  
# DELETE LOCAL  
function yd() {  
	# delete  
	echo DELETING LOCAL $1;  
	git branch -D $1;  
	# log  
	echo "\n\n";  
	echo "STATUS:";  
	git status;  
}  
  
# DELETE LOCAL AND REMOTE  
function ydd() {  
	echo DELETING REMOTE $1;  
	echo "\n\n";  
	# delete  
	if [ "$1" = "master" ]  
	then  
		echo cannot delete master;  
	elif [ "$1" = "dev" ]  
	then  
		echo CANNOT DELETE DEV;  
	else  
		git branch -D $1;  
		git push origin :$1;  
	fi;  
}  
  
# UPDATE  
function ya() {  
	echo PULLING $1;  
	echo "\n";  
	# update  
	git fetch;  
	if [ $1 ]  
	then  
		git checkout $1;  
		git pull;  
	else  
		git pull;  
	fi;  
	# log  
	echo "\n\n";  
	echo "STATUS:";  
	git status;  
}  
  
# UPDATE (WITH GIT STASH / POP) - USE WHEN COLLABORATION  
function yaa() {  
	echo STASHING AND PULLING $1;  
	echo "\n";  
	# update  
	git stash;  
	git pull;  
	git stash pop;  
	# log  
	echo "\n\n";  
	echo "STATUS:";  
	git status;  
}  
  
# FIX MARKDOWN for GitHub flavor  
 function ghmd() {  
 	perl -pi -e 's/[\s]*?\n/\ \ \n/g' *.md;  
 	perl -pi -e 's/[\s]*?\n/\ \ \n/g' */*.md;  
 	perl -pi -e 's/[\s]*?\n/\ \ \n/g' */*/*.md;  
 	perl -pi -e 's/[\s]*?\n/\ \ \n/g' */*/*/*.md;  
 	perl -pi -e 's/[\s]*?\n/\ \ \n/g' */*/*/*/*.md;  
 	perl -pi -e 's/[\s]*?\n/\ \ \n/g' */*/*/*/*/*.md;  
 }  
  
# SAVE (BUT FIRST RUN DOCS)  
function yds() {  
	# First, go through and fix markdown files to be GitHub compatible  
	ghmd;  
  
	# convert docs to html  
    npm run docs;  
  
    # save  
    ys $1;  
}  
  
# SAVE  
function ys() {  
	# First, go through and fix markdown files to be GitHub compatible  
	ghmd;  
  
	# branch=$(git symbolic-ref --short HEAD);  
	# if [ $branch = dev ]  
	# then  
	# 	echo cannot merge $branch;  
	# elif [ $1 = staging ] || [ $1 = master ]  
	# then  
	# 	echo cannot merge to $1;  
	# else  
		echo COMMITTING $1;  
		echo "\n\n";  
		# pull  
		git pull;  
		# git stash;  
		# git pull;  
		# git stash pop;  
		# save  
		git add .;  
		git commit -m $1;  
		# push  
		echo "\n\n";  
		echo PUSHING TO $branch;  
		git push;  
		# log  
		echo "\n\n";  
		echo "STATUS:";  
		git status;  
	# fi;  
}  
function yss() {  
	# First, go through and fix markdown files to be GitHub compatible  
	ghmd;  
  
	# branch=$(git symbolic-ref --short HEAD);  
	# if [ $branch = dev ]  
	# then  
	# 	echo cannot merge $branch;  
	# elif [ $1 = staging ] || [ $1 = master ]  
	# then  
	# 	echo cannot merge to $1;  
	# else  
		echo COMMITTING $1;  
		echo "\n\n";  
		# pull  
		git stash;  
		git pull;  
		git stash pop;  
		# save  
		git add .;  
		git commit -m $1;  
		# push  
		echo "\n\n";  
		echo PUSHING TO $branch;  
		git push;  
		# log  
		echo "\n\n";  
		echo "STATUS:";  
		git status;  
	# fi;  
}  
  
# MERGE  
function ym() {  
	branch=$(git symbolic-ref --short HEAD);  
	echo MERGING $branch TO $1;  
	echo "\n\n";  
  
	# if [ $branch = dev ]  
	# then  
	# 	echo cannot merge $branch;  
	# elif [ $1 = staging ] || [ $1 = master ]  
	# then  
	# 	echo cannot merge to $1;  
	# else  
		if [ $1 ]  
		then  
  
			git fetch;  
			git checkout $1;  
			git pull;  
  
			if [ $2 ]  
			then  
				2=merging$branch$2;  
			else  
				2=merging$branch;  
			fi;  
  
			echo $2;  
			git merge $branch -m $2;  
			git push;  
  
			# log  
			echo "\n\n";  
			echo "STATUS:";  
			git status;  
		fi;  
	# fi;  
}  
```