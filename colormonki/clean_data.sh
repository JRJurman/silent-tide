#!/bin/bash

SPECTRA_FILES=$(ls *.sp);

for file in $SPECTRA_FILES; do

  cat $file | grep 'BEGIN_DATA';

done;


