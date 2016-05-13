#!/bin/bash

echo -e "\033[0;32mRunning Make and committing changes.\033[0m"

make 

git add *

git commit -m "quick tweak, automated git commit..."

git push

echo -e "\033[0;32mCopying most recent CV to research website.\033[0m"

cp cv_mclevey.pdf ~/Documents/websites/john/hugo-sites-code/source_mclevey/content/pdfs/

echo -e "\033[0;32mChanging directories\033[0m"

cd ~/Documents/websites/john/hugo-sites-code/source_mclevey/

echo -e "\033[0;32mBuilding the site...\033[0m"

hugo

echo -e "\033[0;32mMoving things to the github repo\033[0m"

cp -rf public/ ~/Documents/websites/john/live/mclevey.github.io/

cd ~/Documents/websites/john/live/mclevey.github.io/

echo -e "\033[0;32mDeploying\033[0m"

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push

echo -e "\033[0;32mCommiting website source repo\033[0m"

cd ~/Documents/websites/john/hugo-sites-code/source_mclevey/

git add *

git commit -m "updated cv"

git push