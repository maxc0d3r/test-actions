#!/bin/bash

git config --global user.email "dev@synduit.com"
git config --global user.name "Github Actions"

declare -A local_branch_remote_repo=( ["a"]="git@github.com:maxc0d3r/test-actions-a.git" ["b"]="git@github.com:maxc0d3r/test-actions-b.git")

for BRANCH in "${!local_branch_remote_repo[@]}"
do
  git remote add remote-$BRANCH ${local_branch_remote_repo[$BRANCH]}
  git push remote-$BRANCH $BRANCH:master
done

