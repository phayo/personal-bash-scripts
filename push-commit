#!/bin/bash

chmod u+x push-commit

# get the user current directory
dirc="$(pwd)"

# check if the folder contains a vali git repository
if [[ -d $dirc/.git ]]; then
    # show disclaimer
    echo "DISCLAIMER: Only use this if you wish to stage, 
        commit and push ALL untracked files in your current repo as a SINGLE COMMIT to YOUR CURRENT branch"
    echo "By proceeding with a commit message you agree to USE AT YOUR OWN RISK"

    # request for commit message
    echo "Enter a commit message"
    read commit_message

    # stage all untracked files
    git add .

    # commit with commit message
    git commit -m "$commit_message"

    # push to remote repo
    git push
else
    echo "This directory does not contain a valid git repository"
fi
    exit 0
