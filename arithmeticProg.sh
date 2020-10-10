
#!/bin/bash -x

read -p "Enter the value of a : " a
read -p "Enter the value of b : " b
read -p "Enter the value of c : " c

result1=$((a+b*c))
echo "Result of a+b*c : $result1"

result2=$((a*b+c))
echo "Result of a*b+c : $result2"

result3=$((c+a/b))
echo "Result of c+a/b : $result3"

result4=$((a%b+c))
echo "Result of a%b+c: $result4"

declare -A arithDict

arithDict[one]="$result1"
arithDict[two]="$result2"
arithDict[three]="$result3"
arithDict[four]="$result4"

array=(${arithDict[@]})
echo "Array : "${array[@]}

#For Descending Order
for ((i=0;i<${#array[@]};i++))
do

	for ((j=$i;j<${#array[@]};j++))
	do
		if [[ ${array[i]} -lt ${array[j]} ]]
		then
			temp=${array[i]}
			array[$i]=${array[j]}
			array[$j]=$temp
		fi	
	done
done
echo "Array in Descending Order: ${array[@]}" 
#For Ascending Order
for ((i=0;i<${#array[@]};i++))

do

	for ((j=$i;j<${#array[@]};j++))

	do

		if [[ ${array[i]} -gt ${array[j]} ]]

		then

			temp=${array[i]}

			array[$i]=${array[j]}

			array[$j]=$temp

		fi

	done

done

echo "Array in Ascending Order: ${array[@]}"

