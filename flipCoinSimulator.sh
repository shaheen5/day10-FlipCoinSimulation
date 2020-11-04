#!/bin/bash -x

echo "Flip Coin Simulation!!!"
head_count=0
tail_count=0
count=0
while [ $count -lt 10 ]
do
	if [ $(( RANDOM%2 )) -eq 0 ]
	then
		echo "Heads!"
		((head_count++))
	else
		echo "Tails!"
		((tail_count++))
	fi
	((count++))
done
echo "No. of times HEAD has won="$head_count
echo "No. of times TAIL has won="$tail_count
