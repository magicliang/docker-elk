#!/bin/bash

git config pull.ff only
git config --global init.defaultBranch main
git pull

echo "ready to commit, your comment is: "  
read comment
echo "coment is:  $comment"

git add -A .

git commit -m "$comment"
git push