#!/bin/bash -x

echo " welcome to flip coin simulation "

#displaying heads or tails

CoinFlip=$(( RANDOM%2 ))
if [ $CoinFlip -eq 0 ]
then
	echo " coin flips head"
else
	echo " coin flips tail"
fi

#number of heads and tails
countofhead=0
countoftail=0

for (( i=0; i<20; i++ ))
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
