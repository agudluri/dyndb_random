#!/bin/bash

if [ -n "$1" ]; then
   for ((i=1; i<=100; i++))
   do
      echo "File #$i"
      python bin/dyndb_random.py -t "$1" -n 10000 -x
      sleep 1
   done
else
   echo "Argument is empty. No action required."
fi