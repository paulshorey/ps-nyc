#
# Custom
#
branch=$(git symbolic-ref --short HEAD)
if [ $branch = main ] || [ $branch = master ]
then
  npm version patch --no-git-tag-version && npm run build && npm run pub && git add .
else
  echo "not on main or master branch"
fi
