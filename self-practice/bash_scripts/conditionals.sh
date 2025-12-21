#!/usr/bin/env bash


echo "You Died!"
echo "do you like coffee? (y/n)"
read choice

if [[ $choice == "y" ]]; then
	echo "you're awesome"
else
	echo "get some coffee"
fi

