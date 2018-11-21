#!/bin/bash

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/newssh
cd /www/ps
git reset HEAD -\-hard;
git pull

cd /www/ps
npm install

pm2 start  app.js -i max