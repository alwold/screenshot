#!/bin/sh

echo -n "Enter WindowID for Chrome:"
read window_id

in=""
while [ "$in" != "q" ]
do
  echo "Press enter to take screenshot (q to quit)"
  read in
  if [ "$in" != "q" ]
  then
    screencapture -l${window_id} -o raw.png
    stamp=`date +%Y%m%d%H%M%S`
    convert raw.png -crop +0+71 "screenshot-${stamp}.png"
    echo "Saved screenshot-${stamp}.png"
  fi
done
