#!/bin/sh

Notedir=$HOME/Documenti/Note/
Notelist=`ls -t $Notedir`
Notelist="$(echo $Notelist | tr " " "\n")"
echo "$Notelist"
Chosedfile="$(echo "$Notelist" | rofi -dmenu)"
Nvimpath=$Notedir$Chosedfile
nvim $Nvimpath
