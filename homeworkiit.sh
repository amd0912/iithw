#!/bin/bash
function f {
if [ -n "$1" ]
      then cd "$1"
fi

ls -R | egrep ":$|*.jpg$|*.jpeg$"

if [ 'ls -F -1 | grep "/" | wc -l' = 0 ]
      then echo "no subdir"
fi
ls -R -l | egrep '*.jpg$|*.jpeg$' | awk '{ x+= $5 } END { print "total size " x}'
exit
}
if [ -z "$1" ]
    then f pwd
    else f $1
fi
