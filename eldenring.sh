#!/bin/bash
echo "Welcome transihed.Please select your starting class:
1-Samurai
2-Prisoner
3-Prophet"

read class 

case $class in
	1)
	        type="Samurai"
	        hp=10
              	attack=20
        	;;
	
	2)
	        type="Prisoner"
                hp=20
                attack=4
                ;;
	3)
		type="Prophet"
                hp=30
                attack=5
                ;;

esac

echo "Welcome  $type. Your hp is $hp and attack is $attack . All the best. "

#First beast battle
beast=$(( $RANDOM % 2))

echo 'Your first beast is comming up.
>>Choose a number between 0-1.'

read tarnised

if [[ $beast == $tarnised ]]; then
	echo "Beast VANQUISED!!That was easy.
	Congrats"
else
	echo 'You died'
	exit 1
fi

sleep 2

#Boss battle
echo 'Boss Battle,Its the king comming. Pick a number between 0-9'
beast=$(( $RANDOM % 10 ))
read tarnised

if [[ $beast == $tarnised || $tarnised=="coffee" ]]; then
        echo "BOSS VANQUISED!! You are a warrior bro"
elif [[ $USER == "shera" ]]; then
	echo "Hey shera,thujekon rok saktha hai"
else
        echo 'You died at the boss,'
fi
