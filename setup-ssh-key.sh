#!/bin/bash
FILE=~/.ssh/id_rsa.pub
if test ! -f "$FILE"; then
	ssh-keygen -t rsa
fi
ssh-copy-id $1

