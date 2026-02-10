#!/bin/bash

EqNum=$(cut -f3 Year_Mag_Country.tsv | grep -x "$1" | wc -l)
echo "Total number of earthquakes for $1 = $EqNum"

EqLargest=$(cut -f2,3 Year_Mag_Country.tsv | grep "$1" | sort -n -r | head -n 1 | cut -f1)
echo "Largest earthquake in the country for $1 = $EqLargest"