#!/bin/bash
grep . <quotes.txt | awk -F'~' '{print $2 " once said, \"" $1 "\""}' > speech.txt