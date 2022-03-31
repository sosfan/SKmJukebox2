#!/bin/bash

#rm "$1"/"$2"."$3"

#echo conv "$1"/"$2"."$3"

gexec=/usr/bin/aacgain
if [ ! -f "$gexec" ]; then
  #ubuntu snap version
  gexec=/snap/aacgain/current/aacgain
fi

$gexec -r -c "$1"/"$2"."$3"

echo "OK!"
