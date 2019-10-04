#!/bin/bash

for BRANCH in $(git branch | grep -v 'master')
do
  git checkout $BRANCH
  git merge origin/master $BRANCH
  git push origin $BRANCH
done
