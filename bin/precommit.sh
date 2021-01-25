#
# Custom "publish" script. Only publish if on master/main branch!
#
branch=$(git symbolic-ref --short HEAD)
if [ "$branch" = "main" ] || [ "$branch" = "master" ]
then
  npm version patch --no-git-tag-version && npm run build && npm run pub && git add .
else
  printf "\nnot on main or master branch\n"
fi

