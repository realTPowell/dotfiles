#!/usr/bin/env bash

python_layout='layout uv'
myvar=''
case ${0} in
	python) 
		myvar=$python_layout
		;;
	*)
		myvar='no input'
esac

echo "$my_var test"
