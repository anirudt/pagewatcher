#!/bin/bash

rm -rf /home/anirudt/Projects/small_projects/pagewatcher/ind.html
echo "Deleted"
wget http://cse.iitkgp.ac.in/~bivasm/UB2016.html -O /home/anirudt/Projects/small_projects/pagewatcher/ind.html
diffcheck="$( diff ind.html UB2016.html | wc -c )"
if [ "$diffcheck" -eq "0" ]; then
  /usr/bin/notify-send "No change yet"
else
  /usr/bin/notify-send "Some change has been noted. Please visit the site for more details."
fi
