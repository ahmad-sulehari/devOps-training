#!/usr/bin/env bash

echo "choose your character:
1 - Joel
2 - Ellie
3 - Tommy
"

read character_type

case $character_type in
	1)
		name="Joel"
		main_weapon="Riffle"
		side_arm="revolver"
		attack=20
		;;
	2)
		name="Ellie"
		main_weapon="burretta"
		side_arm="knife"
		attack=10
		;;
	3)
		name="Tommy"
		main_weapon="shotgun"
		side_arm="pistol"
		attack=15
		;;
esac

echo "you choose $name.
You're weapons:
- main: $main_weapon
- side arm: $side_arm
- power: $attack
"

# First battle
echo "Get ready for battle: An Runner is comming your way"
echo "chose a number (0/1)"
read userchoice

beastchoice=$(($RANDOM%2))

if [[ $beastchoice == $userchoice ]]; then
	echo "You survived the runner"
else
	echo "You Die :-("
	exit 1
fi

echo " you have made it. but what's that!!! A clicker "
echo "hurry up make a choice between (0-9)" 
read userchoice

beastchoice=$(($RANDOM%10))

if [[ $userchoice == $beastchoice ]]; then
	echo "that was a close one, but you're a surviver. Good job"
elif [[ $name == "Ellie" ]]; then
	echo "clicker can't beat elli :->"
else
	echo "You Die!!!"
fi



