#!/bin/bash

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/newssh

cd /www/ps
git reset HEAD -\-hard;
git pull
npm install
