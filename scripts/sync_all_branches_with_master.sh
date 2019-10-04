#!/bin/bash

for BRANCH in $(ls .git/refs/remotes/origin/)
do
  if [ $BRANCH != 'master' ]
  then
    git checkout $BRANCH
    git merge origin/master $BRANCH
    git push origin $BRANCH
  fi
done

