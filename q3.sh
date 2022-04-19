#!/bin/bash

#part a
wc -c $1 | cut -d ' ' -f 1 

#part b
wc -l $1 | cut -d ' ' -f 1

#part c
wc -w $1 | cut -d ' ' -f 1 

#part d
numlines=$(wc -l $1 | cut -d ' ' -f 1)

i=1

while (( $i <= $numlines ))
do
        if [[ $i -eq $numlines ]]
        then
                wordcount=$(tail -n 1 $1 | wc -w | cut -d ' ' -f 1)
                echo "Line No: $i - Count of words: $wordcount"
                break
        else
                wordcount=$(head -n $i $1 | tail -n 1 | wc -w | cut -d ' ' -f 1)
                echo "Line No: $(( i++ )) - Count of words: $wordcount"
        fi
done

#part e

grep -wo '[[:alnum:]]\+' $1 | sort | uniq -cd | while IFS=' ' read freq word
do
        echo "Word: $word - Count of repetition: $freq"
done

