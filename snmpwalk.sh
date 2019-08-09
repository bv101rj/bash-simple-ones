#!/bin/bash
while read line 
do
echo "snmpwalk -v$1 -c'$2' $line $4"
done < $3
