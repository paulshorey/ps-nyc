#!/usr/bin/env bash
# OK, there are no tests here. But they're coming. ;)
# lets see if this still works..

#
# GIT and filesystem variables
#
branch=$(git symbolic-ref --short HEAD)
cwd=$(dirname $(realpath $0))
rootdir=$cwd/..
#
# Only publish if on master/main branch!
#
if [ "$branch" = "main" ] || [ "$branch" = "master" ]
then
  printf "\n\npublishing %s branch\n\n" "$branch"
  npm version patch --no-git-tag-version &&
  npm run build &&
  git add . &&
  #
  # Publish
  #
  rm -rf "$rootdir/../public/ps" &&
  mv "$rootdir/public" "$rootdir/../public/ps" &&
  cd "$rootdir/../public" &&
  git add . &&
  git commit -m 'ps' &&
  git push &&
  printf "\n\nCOMPLETED PUBLISH SCRIPT\n\n"
else
  #
  # Do not publish feature branches
  #
  printf "\n\nnot on main or master branch\n\n"
fi
#
# Publishing should not block next execution. Only testing/linting can exit with 1+ code
#
exit 0
