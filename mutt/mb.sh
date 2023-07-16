#!/bin/sh
mdir="$1"
prefix="$2"
_mdirs() { find "$mdir" -maxdepth 1 -mindepth 1 -type d -printf "+'$prefix%f' "; }
echo "mailboxes $(_mdirs)"
