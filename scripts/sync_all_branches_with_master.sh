#!/bin/bash

git config --global user.email "dev@synduit.com"
git config --global user.name "Github Actions"

for BRANCH in $(ls .git/refs/remotes/origin/)
do
  if [ $BRANCH != 'master' ]
  then
    git checkout $BRANCH
    git merge origin/master $BRANCH
    git remote add tmp_origin git@github.com:maxc0d3r/test-actions.git
    git push tmp_origin $BRANCH
  fi
done

