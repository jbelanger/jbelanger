#!/bin/bash

git switch -c $1 > /dev/null 2>&1
git switch $1
echo "$2" > TEMP
git add .
git commit -m "$2"
git commit --amend --no-edit --date="$3"
