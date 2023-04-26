#!/bin/bash

if [ $# -eq 0 ]; then
  archivos=$(find . -name "*.txt")
else
  archivos=$@
fi

for archivo in $archivos; do
  lineas=$(wc -l < $archivo)
  echo "$archivo tiene $lineas líneas."
done
