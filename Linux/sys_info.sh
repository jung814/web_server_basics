#!/bin/bash

if [ -d ~/research_2 ]
then 
  echo -e "directory already exists"
else
  mkdir ~/research_2
  echo -e "directory created"
fi


echo -e "First_Script $(date)\n"

echo -e "uname info: $(uname)\n"

echo -e "machine ip: $(ifconfig -a | grep inet | head -n 2 | tail -n 1 | awk '{print $2}')\n"

echo -e "Hostname: $(hostname)\n"

echo -e "DNS info: $(cat /etc/resolv.conf | tail -n 3)\n"

echo -e "total memory available: $(grep MemTotal /proc/meminfo)\n"
