#!/bin/bash

echo Hello, who am I talking to?
read varname
echo It\'s nice to meet you $varname

echo "What is the title of the README file?"
read readmeTitle
echo "Ok. Will use {$readmeTitle} as the title."


echo "What initial content do you want to add?"
read readmeContent
echo "Ok. Will use {$readmeContent} as the title."

echo "What is the commit message?"
read gitCommitMsg
echo "Ok. Will insert {$gitCommitMsg} as the commit message."

echo "What is the github repo to connect?"
read gitRemoteRepo
echo "Ok. Will connect to {$gitRemoteRepo}."

echo "# $readmeTitle" >> README.md
echo "" >> README.md
echo "$readmeContent" >> README.md

git init
git add .
git commit -am "$gitCommitMsg"
git branch -M main
git remote add origin "$gitRemoteRepo"
git push -u origin main








<<COMMENT
Want an easy way to manage homebrew? Well I'm trying to build one. It will take time though as it will start as a CLI app and gradually add features and interfaces over time.
COMMENT
