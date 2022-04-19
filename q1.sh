#!/bin/bash

#part a
awk NF < quotes.txt

echo 

#part b
awk '!a[$0]++' < quotes.txt | awk NF
