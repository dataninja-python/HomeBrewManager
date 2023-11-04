#!/bin/bash
set -euo pipefail

# GLOBAL VARIABLES
INTVAR=0
STRVAR="Hi"
CURRENTQUESTION="What's your name?"

echo "Integer var: $INTVAR"
echo "String var: $STRVAR"
echo "current question: $CURRENTQUESTION"

function main() {
	# first get users name
	read -p "what is your name?" name
	strVar="Hi $name. Let's update this repo!"
	displayMsg
	# get the commit message
	get_user_input "What is the commit message?"	
	# add files
	add_files
	# commit the files
	add_commit_msg
	get_user_input "What branch are you pushing this to?"
	# push
	push_to_repo
}

function menu() {

}

function instructions() {
}

function displayMsg() {
	echo "$1..."
	sleep 0.33
	echo "Clearing the screen..."
	clear
	exit 
}

function get_user_input() {
	echo "$1"
	read response
	echo "You entered: {{$response}}"
	STRVAR=$response
}

function get_user_question() {
}

function add_files() {
	git add . 
}

function add_commit_msg() {
	git commit -am "$STRVAR"
}

function push_to_repo() {
	git push origin "$STRVAR"
}

main
