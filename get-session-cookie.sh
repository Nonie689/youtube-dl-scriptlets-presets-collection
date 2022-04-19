#!/usr/bin/env bash

basedir=$(dirname $0)
cookie_content=$(python $basedir/get-session-cookie.py | awk '$1=$1' FS="': '" OFS=":" | awk  -F "'" '{print  $2 $3 $4 $5 $6}' | sed 's/, / --add-header /g')

echo $cookie_content
echo #cookie_content > $basedir/cookie_content.txt
