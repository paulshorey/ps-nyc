#!/bin/bash

iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 4080

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/ps1-git
cd /www/ps-nyc
git reset HEAD -\-hard;
git pull

# rm -rf public/console
http-server www -p 4080 -s -c 30 #-d false