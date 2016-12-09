#!/bin/bash

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/ps1-git
cd /www/ps-nyc
git reset HEAD -\-hard;
git pull
npm install

cd /www/ps-nyc/wdi
git reset HEAD -\-hard;
git pull
npm install
