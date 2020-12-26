#!/bin/sh

Date=$(date +"%F")
Filename="$HOME/Documenti/Note/$Date.md"
if [ ! -f $Filename ]; then
    echo "# $(date +%F)" > $Filename
fi
nvim -c "norm Go" \
  -c "norm Go## $(date +%H:%M)" \
  -c "norm Go" \
  -c "norm zz" \
  -c "startinsert" $Filename
