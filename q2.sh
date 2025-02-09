#!/bin/bash

#a
sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt | wc -l

#b
sed -n 's/[^a-zA-Z]\(Sherlock\|Holmes\)[^a-zA-Z]/\n&\n/gp' sherlockholmes.txt | grep -o 'Sherlock\|Holmes' | wc -l

#c
sed 's/^/Hello: /' sherlockholmes.txt

#d
sed -E 's/\b[A-Z]{1}[a-z]+ [A-Z]{1}[a-z]+\b/Jonathan_Weil/g' sherlockholmes.txt

#e
sed -E 's/\(([^()]*)\)/[\1]/g' sherlockholmes.txt

