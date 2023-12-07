#!/bin/zsh

words=$(cat ~/Documents/executable/cowsay-rand/words.txt)

word=$(echo $words | shuf | head -n 1)

cowsay -y $word
#echo $word
