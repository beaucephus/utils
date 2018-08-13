#!/bin/bash

mailto="mail@example.com"

sites="http://www.example.com"

for site in $sites
do
  curl $site
  rtn=`echo $?`
  if  [ "$rtn" -eq "0" ]
  then
    echo "$site is down." | mailx -s "$site is down." $mailto
  fi
done
