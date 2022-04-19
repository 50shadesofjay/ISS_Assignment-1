#!/bin/bash

#Part A 
awk 'NF > 0' quotes.txt 

#Part B
uniq -u quotes.txt

