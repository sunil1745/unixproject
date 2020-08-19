function type_number { echo "guess how many files are there : "
read response
}
type_number
my_list=$(ls | wc -l)
while :
do
if [[ $response -eq $my_list ]]
then
	echo "YOU GUESSED CORRECT :)"	
break
fi
	if [[ $response -gt $my_list ]]
	then
		echo " guess is HIGH !! "
	fi
	if [[ $response -lt $my_list ]]
	then 
		echo " guess is LESS !! "
	fi
echo "GUESS AGAIN !"
read response
done
