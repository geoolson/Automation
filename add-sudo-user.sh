#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Run as root"
  exit
fi
if test -z $1
then
  echo "Usage: sudo $0 <username>"
  exit 1
fi
adduser $1
usermod -aG sudo $1
