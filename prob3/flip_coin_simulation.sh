#!/bin/bash -x
echo "flip coin combination problem"
ran=$((RANDOM%2))
if [ $ran -eq 1 ]
then
        echo "Coin faces HEAD"
else
        echo "Coin faces TAIL"
fi
