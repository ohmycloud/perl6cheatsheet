#!/bin/bash
rm -rf .git/
git init
git config user.name ohmycloud
git config user.email sxw2k@sina.com
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
git add .
git commit -m "init commit"
git remote add origin git@github.com:ohmycloud/perl6cheatsheet.git
git push -u origin master
