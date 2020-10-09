
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
