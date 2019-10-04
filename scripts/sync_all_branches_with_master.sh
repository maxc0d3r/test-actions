#!/bin/bash

x=`ls .git/refs/remotes/origin/`
echo $x
for BRANCH in $(git branch | grep -v 'master')
do
  echo "Branch: $BRANCH"
done

