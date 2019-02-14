#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the website, putting the artifacts into public/
hugo -t hello-friend

# Commit and push the updates to deploy the changes
cd public

git add .

msg="Rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"

git push origin master

cd ..
