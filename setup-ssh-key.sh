#!/bin/bash
if test -z $1
then
	echo "Usage: $0 <user@server_address>"
	exit 1
fi
FILE=~/.ssh/id_rsa.pub
if test ! -f "$FILE"; then
	ssh-keygen -t rsa
fi
ssh-copy-id $1

