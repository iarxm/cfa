#!/bin/sh
#a=~/.config/mutt/mailboxes.`basename $1`
mdir="$1"
prfx1="$2"
prfx2="mailboxes "
mdirs=$(find "$mdir" -maxdepth 1 -mindepth 1 -type d -printf "+'$prfx1%f' ")
out=${prfx2}${mdirs}
echo "$out"
