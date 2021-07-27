#!/bin/bash

rm "$1"/"$2"."$3"

echo conv "$1"/o_"$2".m4a

gexec=/usr/bin/aacgain
if [ ! -f "$gexec" ]; then
  #ubuntu snap version
  gexec=/snap/aacgain/current/aacgain
fi

$gexec -r -c "$1"/o_"$2".m4a
echo "Muxing"
ffmpeg -i "$1"/o_"$2"."$3" -i "$1"/o_"$2".m4a -c:v copy -c:a copy -map 0:v:0 -map 1:a:0 "$1"/"$2"."$3" </dev/null

rm "$1"/o_"$2".m4a
rm "$1"/o_"$2"."$3"
echo "OK!"
