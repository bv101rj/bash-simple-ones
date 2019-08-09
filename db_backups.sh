#!/bin/bash
# Called as ./Backup.sh <<DATABASE>> <<Table>>
D=$(date +"%Y_%m_%d")

mysqldump $1 $2 > $2.$D.sql

tail $2.$D.sql
echo "====================================================="
head $2.$D.sql
echo "====================================================="

