#! /usr/bin/env bash

# sort acronyms.csv with posix locale and eliminate duplicates


export LC_COLLATE=C

sort -dfi -t "," -k 1 acronyms.csv | uniq | sponge acronyms.csv
