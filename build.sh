#! /bin/bash

echo -e "\033[32;1mCleanning up"; tput sgr0
rm -fvr output;
mkdir -v output;

echo -e "\033[32;1mGenerating site"; tput sgr0
for X in `ls *.html`; do 
	echo -e "Creating \033[34;1m$X"; tput sgr0
	cat header > output/$X;
	cat $X >> output/$X;
	cat footer >> output/$X;
done; 

echo -e "\033[32;1mCopying CSS"; tput sgr0
for X in `ls *.css`; do 
	echo -e "Copying \033[34;1m$X"; tput sgr0
	cat $X >> output/$X;
done; 
