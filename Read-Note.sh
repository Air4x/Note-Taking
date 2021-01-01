#!/bin/sh

Notedir=$HOME/Documenti/Note/
Notelist=`ls $Notedir`
#Notelist="$(echo $Notelist | sed -i 's/\s+/\n/g')"
Notelist="$(echo $Notelist | tr " " "\n")"
echo "$Notelist"
Chosedfile="$(echo "$Notelist" | rofi -dmenu)"
Nvimpath=$Notedir$Chosedfile
echo $Nvimpath
#nvim $Nvimpath
#for f in $Notelist; do
#    echo $f 
#done 

#echo $Notelist | rofi -dmenu
