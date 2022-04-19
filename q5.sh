
#!/bin/bash

#part a

string="$*"

length=${#string}

for (( i=$length-1; i>=0; i-- ))
do
        reverse=$reverse${string:$i:1}
done

echo "$reverse"

#part b

reverse=$(echo "$reverse" | tr a-z b-za)
reverse=$(echo "$reverse" | tr A-Z B-ZA)

echo "$reverse"

#part c

for (( i=$length/2-1; i>=0; i-- ))
do
        new=$new${string:$i:1}
done

for (( i=$length/2; i<$length; i++ ))
do
        new=$new${string:$i:1}
done

echo "$new"





