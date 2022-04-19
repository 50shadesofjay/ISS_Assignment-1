#!/bin/bash

read string

#PART A
echo $string | rev

#PART B
y=($(echo $string | tr a-z b-za))
echo $y | rev

#PART C
echo -n ${string:0:${#string}/2} | rev 
echo ${string:${#string}/2}
