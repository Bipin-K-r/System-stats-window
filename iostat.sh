#!/bin/bash

while true
do
 iostat -c -p sda| awk 'NF > 0'  | head -12
 sleep 4
 clear
done
