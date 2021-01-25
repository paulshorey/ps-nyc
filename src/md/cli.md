---
title: Hello, world!
path: /hello-world
date: 2019-01-29
description: 'Pro tip: install ZSH and OH-MY-ZSH, and Nice Editor (ne)!'
---

# CLI / BASH

Check how long a command takes: add `time`  before the CLI command.

Run command as another user:

```text
runuser -l  userNameHere -c 'command'
runuser -l  userNameHere -c '/path/to/command arg1 arg2'
runuser -u user -- command1 arg1 arg2
```

## Processes

**`netstat -vanp tcp | grep 3000`** find all processes using port 3000  
process id is 3rd large number leftward, or 4th column from the right  
**Stop process:** `kill 32748`

**Suspend process:** `Ctrl + Z`    
**Un-suspend process:** `fg`   

## Files

`cat ./filename` show contents of file  
`echo $(cat ./filename) > ./file2` copy contents of file into another file  
`echo 'whatever=123' >> ./filename` write a string to the bottom of a file

### Switch directories

**`pushd .`** \# save current working directory **`popd`** \# go back to saved directory

### Change ownership

**`sudo chown -R $(id -u):$(id -g) .`** take ownership of . directory, recursively

## Running processes

**`ps cax | grep node`** - list running node processes:  
**`ps -Flww -p THE_PID`** - see more details about each process:

**`ps -ef`** list all running processes  
**`ps -ef | grep node`** list only "node" processes  
**`lsof -i :4321`** find PID of running process  
**`kill 123`** kill process by PID

### Process on port

**`sudo lsof -i tcp:3000`** \(on macOS\)  
`netstat -vanp tcp | grep 3000` find all processes using port 3000

## **Bash**

\*\*\*\*[**See page about Bash**](bash.md)\*\*\*\*

