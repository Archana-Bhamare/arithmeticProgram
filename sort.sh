
for ((i=1;i<=10;i++))

do

	array[i]=$(($RANDOM%900+100))

done

echo ${array[@]}
for ((i=0;i<${#array[@]};i++))

do

	for ((j=$i;j<=${#array[@]};j++))
	
	do

		if [[ ${array[i]} -lt ${array[j]} ]]
				then
							temp=${array[i]}

			array[$i]=${array[j]}
					array[$j]=$temp

		fi

	done

done

echo "${array[@]}"