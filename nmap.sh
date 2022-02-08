#!/bin/bash
ports=$(nmap -p- --min-rate=1000 -T4 172.16.11.100 | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//)
nmap -sC -sV -p$ports 172.16.11.100
