#!/usr/bin/env bash

echo " "
branch=$(git symbolic-ref --short HEAD)
cwd=$(pwd)
rootdir=$(pwd)

ls "$rootdir/../public"
