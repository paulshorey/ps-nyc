#!/usr/bin/env bash
# OK, there are no tests here. But they're coming. ;)
# lets see if this still works..

#
# GIT and filesystem variables
#
branch=$(git symbolic-ref --short HEAD)
#cwd=$(dirname $(realpath $0))
rootdir=$(pwd) # should be path to root directory of this project, not to this script
echo $rootdir
