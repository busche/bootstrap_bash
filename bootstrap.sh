#!/bin/bash

parse_command_line(){
	for var in "$@" ; do
		key=`echo $var | awk -F\= ' { print $1 } '`
		value=`echo $var | awk -F\= ' { print $2 } '`
		eval ${key}='${value}'
	done
}

