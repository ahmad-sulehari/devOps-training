#!/usr/bin/env bash

echo "what is your name?"
read name
echo "what is your age?"
read age

echo "Hello, $name, you are $age years old"

echo "calculating..."
echo "**........"
sleep 1
echo "****......"
sleep 1
echo "******...."
sleep 1
echo "********.."
sleep 1
echo "**********"

luckyAge=$(($RANDOM % 15))

echo "$name will become a millionare by the age of $(( $luckyAge + $age))"

# some of the built in vars
# echo "$PWD, $SHELL, $USER, $HOSTNAME"
