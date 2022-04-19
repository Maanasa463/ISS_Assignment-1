#!/bin/bash

awk NF < quotes.txt | while IFS='~' read quote author
do
        echo "$author once said, \"$quote\""
done > speech.txt
