#!/usr/bin/env bash
# name="Ahmad"
# echo "what is your name?"

# read name

name=$1
compliment=$2
user=$(whoami)
date=$(date)
working_dir=$(pwd)

echo "Have a good day $name"
sleep 2
echo "what do you plan to do?"
sleep 2
echo "you have good $compliment"
sleep2
echo "you are currently logged in as $user and in the directory: $working_dir"
echo "today is $date"
