#using RANDOM%2 to get 0 or 1.
flip=RANDOM%2

#if flip is 0, it is Head. and flip is 1, it is Tail.
if [ $flip -eq 0 ]
then
	echo "Head"
else
	echo "Tails"
fi

