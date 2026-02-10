#!/bin/bash

cut -f3 Year_Mag_Country.tsv | grep -x $1 | wc -l