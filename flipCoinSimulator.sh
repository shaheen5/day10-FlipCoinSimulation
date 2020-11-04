#!/bin/bash -x

echo "Flip Coin Simulation!!!"
head_count=0
tail_count=0
while [ $head_count -lt 21 ] && [ $tail_count -lt 21 ]
do
	if [ $(( RANDOM%2 )) -eq 0 ]
	then
		((head_count++))
	else
		((tail_count++))
	fi
done
echo "No. of times HEAD has won="$head_count
echo "No. of times TAIL has won="$tail_count
if [ $head_count -eq $tail_count ]
then
	echo "It's a Tie!!"
else
	echo "Its a Win!!"
fi

if [ $head_count -eq 21 ]
then
	echo "HEADS WON BY $(($head_count - $tail_count)) POINTS"
else
	echo "TAILS WON BY $((tail_count - $head_count)) POINTS"
fi
