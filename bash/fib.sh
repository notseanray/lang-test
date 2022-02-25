#!/bin/bash
iter=0
test=0

for i in {1.1000000000}
do
	declare x=0
	declare y=1 
	while :
	do 
		iter=$((iter+1))
		if [[ $((iter%2)) -eq 0 ]]; then
			test=$((test-x))
		else
			test=$((test+x))
		fi
		declare i=$((x+y))
		y=$y
		x=$i
		if [[ x -gt 999999999 ]]; then
			break
		fi
	done
done
