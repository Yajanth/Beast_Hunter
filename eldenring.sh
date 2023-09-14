#!/bin/bash
echo "Welcome Warrior.Please select your starting chararcter:
1-Samurai
2-Prisoner
3-Prophet"

read class 

case $class in
	1)
	        type="Samurai"
	        hp=10
              	attack=2
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
beast=$(( RANDOM % 10 ))

echo 'Your first beast is comming up.
>>Choose a number between 1-10.'

read tarnished
if [[ $beast -le  $tarnished ]]; then
	echo "Beast VANQUISED!!That was easy.
	Congrats"
else
	echo 'You died'
	exit 1
fi

sleep 2

#Boss battle
echo 'Boss Battle,Its the king comming. Pick a number between 5-20'
beast=$(( $RANDOM % 50 ))

read tarnised
strength=$(( tarnised * attack  ))
if [[ $beast == $tarnised || $tarnised=="coffee" ]]; then
        echo "BOSS VANQUISED!! You are a warrior bro"
elif [[ $USER == "shera" ]]; then
	echo "Hey shera,thujekon rok saktha hai"
else
        echo 'You died at the boss,'
fi

