#!/bin/bash

# Catching incorrect params for set up command
if [[ $# -ne 1 ]];
then
	echo "Usage: ./setup_control <Container Name>"
	exit 1
fi

container_name=$1

sudo lxc-attach -- bash -c "mkdir Directory1 Directory2 Directory3 | cd Directory1| mkdir Directory4 | cd ../Directory2 | mkdir Directory5 | cd ../Directory3 | mkdir Directory6 Directory7"
