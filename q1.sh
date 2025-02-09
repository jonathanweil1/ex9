#!/bin/bash
#a
awk 'END {print NR}' aliceinwonderland.txt

#b
awk '{for(i=1;i<=NF;i++) if ($i == "Alice") count++} END {print count}' aliceinwonderland.txt

#c

awk '{for(i=1;i<=NF;i++) words[$i]++} END {for(word in words) if (words[word] == 1) print word}' aliceinwonderland.txt


#d
awk '{for  (i=1; i<=NF; i++) ($i ~ /[a-zA-Z]/) words[$i]++} END {for (word in words) print words[word], word}' aliceinwonderland.txt | sort -n | tail -5

#e
awk '{for (i=1; i<=NF; i++) {sum_length+=length($i); words_counter++}} END {print sum_length/words_counter}' aliceinwonderland.txt




