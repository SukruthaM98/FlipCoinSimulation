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
