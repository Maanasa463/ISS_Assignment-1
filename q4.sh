#!/bin/bash

IFS=','
read -ra input <<< $1

length=${#input[*]}
for (( i=0; i<length; i++ ))
do
        for (( j=0; j<$i; j++ ))
        do
                if [[ ${input[j]} -gt ${input[i]} ]]
                then
                        temp=${input[j]}
                        input[j]=${input[i]}
                        input[i]=$temp
                else
                        continue
                fi
        done

done

echo ${input[@]}
