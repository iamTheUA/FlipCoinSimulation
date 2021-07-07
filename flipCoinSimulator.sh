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
else
	Tail=$((Tail+1))
fi
}

#Running loop for 5 times
for ((i=0;i<5;i++))
do
	Flip
	HeadOrTail
done

echo "Heads: " $Head
echo "Tails: " $Tail

