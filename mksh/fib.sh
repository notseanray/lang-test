#!/bin/mksh
iter=0
test=0

for i in {1.1000000000}
do
	local x=0
	local y=1 
	while :
	do 
		iter=$((iter + 1))
		if [[ $((iter % 2)) -eq 0 ]]; then
			test=$((test - x))
		else
			test=$((test + x))
		fi
		local i=$((x + y))
		y=$y
		x=$i
		if [[ x -gt 999999999 ]]; then
			break
		fi
	done
done

echo "iter: $iter test: $test"
