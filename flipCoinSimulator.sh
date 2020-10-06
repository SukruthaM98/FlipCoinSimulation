#!/bin/bash -x

echo " welcome to flip coin simulation "

#number of heads and tails
countofhead=0
countoftail=0

while [[ $countofhead -le 21 && $countoftail -le 21 ]]
do
	CoinFlip=$(( RANDOM%2 ))

	if [ $CoinFlip -eq 0 ]
	then
        	echo " coin flips head"
		countofhead=$(($countofhead+1))
	else
        	echo " coin flips tail"
		countoftail=$(($countoftail+1))
	fi
done
echo " number of times head won" $countofhead
echo "number of times tail won" $countoftail

if [ $countofhead -gt $countoftail ]
then
	echo " head won by" $(($countofhead-1))
elif [ $countofhead -le $countoftail ]
then
	echo " tail won by " $(($countoftail-1))
else
	echo " it is a tie between head and tail"
fi
