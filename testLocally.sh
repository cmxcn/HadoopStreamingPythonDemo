#!/bin/bash
INPUT_PATH=input/*
OUTPUT_PATH=output/output.txt
rm -rf output
mkdir output
cat $INPUT_PATH |\
python3 mapper.py |\
sort -t $'\t' -k1,1 |\
python3 reducer.py \
>$OUTPUT_PATH
