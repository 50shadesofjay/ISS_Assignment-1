#!/bin/bash

read filename
#PART A
let filesize=$(stat -c%s "$filename")
echo $filesize 

#PART B
wc -l < $filename

#PART C
wc -w < $filename

#PART D
awk '{ print "Line No." NR " - Count of Words:" NF }' $filename

#PART E
cat < $filename | tr [:space:] '\n' | tr ['.','-',' ','--',':','!','~','?','(',')'] '\n' | sort | uniq -c | sed '/1/d' | awk '{print "Word: " $2 " - Count of repetition: " $1}'