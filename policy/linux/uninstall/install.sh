#!/bin/sh

BASE_DIR=$(cd "$(dirname "$0")";pwd)
Filepath="FilepathToSubstitution"

if [ -e $Filepath ]; then
	result=0
else
	result=1
fi

if [ $result -eq 0 ]; then
	`rm -rf $Filepath`
	if [ -e $Filepath ]; then
		result2=0
	else
		result2=1
	fi
else
	result2=1
fi

printf "%d" $result2