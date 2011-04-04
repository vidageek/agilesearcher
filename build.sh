#! /bin/bash

echo "Cleanning up"
rm -fvr output;
mkdir -v output;

echo "Generating site"
for X in `ls *.html`; do 
	echo "Creating $X"
	cat header > output/$X;
	cat $X >> output/$X;
	cat footer >> output/$X;
done; 