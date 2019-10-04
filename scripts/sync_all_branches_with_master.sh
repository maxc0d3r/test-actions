#!/bin/bash

git fetch --all
for BRANCH in $(git branch | grep -v 'master')
do
  echo $BRANCH
done

