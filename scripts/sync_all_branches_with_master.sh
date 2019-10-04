#!/bin/bash

git fetch --all
for BRANCH in $(git branch | grep -v 'master')
do
  echo "Branch: $BRANCH"
done

