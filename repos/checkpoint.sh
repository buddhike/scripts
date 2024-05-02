#!/bin/bash

# Go through all directories in a given root and
# notify any uncommited git changes.
# User is prompted to either skip or commit.
# Choose skip to reset HEAD hard and clean
# untracked files.
# Choose commit to add all untracked files
# and commit with message "checkpoint".
for f in $SOURCE_DIR; do
    s=$(git -C $f status --porcelain) 
    if [ -n "$s" ]; then
        echo "$f has following untracked changes:"  
        git -C $f status --porcelain
        echo "-----"

        echo "git remote:"
        git -C $f remote -v
        echo "-----"

        read -p "Hit enter to commit and push, type n to skip?" i
        if [ -z "$i" ]; then
            git -C $f add -A
            git -C $f commit -m "Checkpoint"
            git -C $f push
        else
            echo "$f skipped"
            git -C $f reset --hard HEAD
            git -C $f clean -dfx
        fi
    fi
done