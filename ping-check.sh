#!/bin/bash
sites="ping-check_sites.txt"

for line in ping-check_sites.txt
do
 result="ping $line"
 echo $result
done
