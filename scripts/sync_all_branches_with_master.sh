#!/bin/bash

git fetch
for BRANCH in $(git branch | grep -v 'master')
do
  echo $BRANCH
done
for BRANCH in $(git branch | grep -v 'master')
do
  git checkout $BRANCH
  git merge origin/master $BRANCH
done
