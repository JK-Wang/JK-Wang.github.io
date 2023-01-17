#!/bin/bash

if [ $# -eq 0 ]; then
    MSG="auto update"
else
    MSG=$1
fi

echo "$MSG"

git add --all
git commit -m "$MSG"
git push

