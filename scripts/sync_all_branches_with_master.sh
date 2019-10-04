#!/bin/bash

x=`git branch`
echo $x
for BRANCH in $(git branch | grep -v 'master')
do
  echo "Branch: $BRANCH"
done

