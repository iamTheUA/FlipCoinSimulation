#using RANDOM%2 to get 0 or 1.
function Flip(){
flip=$((RANDOM%2))
}

#if flip is 0, it is Head. and flip is 1, it is Tail.
Head=0
Tail=0
function HeadOrTail()
{
if [ $flip -eq 0 ]
then
	Head=$((Head+1))
	diff=$((Head-Tail))
else
	Tail=$((Tail+1))
	diff=$((Tail-Head))
fi

}

#Running loop for 42 times
for ((i=0;i<42;i++))
do
	if [ $Head -lt 21 ]
	then
		if [ $Tail -lt 21 ]
		then
			Flip
			HeadOrTail
		fi
	fi
done

#Tie fuction if its a tie
function Tie()
{
diff=0
while [ diff -gt 1 ]
do
	Flip
	HeadOrTail
done
}

if [ $Head -eq $Tail ]
then
	echo "It's a Tie"
	Tie
	echo "Head: " $Head
	echo "Tail: " $Tail
else
	if [ $Head -gt $Tail ]
	then
		diff=$((Head-Tail))
		echo "Head Won by "$diff
	else
		diff=$((Tail-Head))
		echo "Tail Won by "$diff
	fi
fi

