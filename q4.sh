#!/bin/bash

read input
IFS=', ' read -r -a arr <<< "$input"
#arr=(21 22 34 1 7 90 101 2 4 8 45);
len=11;
flag=0;
for ((i=0;i<len;i++))
do
    for((j=0;j<len;j++))
    do
        if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
            flag=1
        fi
    done
    if((flag==0))
    then
        break
    fi
done
echo  ${arr[*]}