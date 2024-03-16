#!/bin/dash
###############################
# TODO: Move to bin scripts in fbk
###############################
pkgls="$1"
prefix="tmp.pkgls"
split $pkgls $prefix -l 10 -a 1 -x
n=0
while [ -f $prefix$n ]; do 
	cat $prefix$n | yay -S --needed -
	echo $prefix$n
	n=$(expr $n + 1)
done

rm $prefix*

# ################################
#	yay -S $a
#	echo $a > "$list.$n"
# found the problem with awk - it doesnt load in the variables - it must spawn a new shell enviornment where $n and $nf are not loaded. Discovered this by running it in the shell

