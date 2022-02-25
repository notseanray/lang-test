iteration = 0
test = 0
count = 0

while( count < 1000000000 )
do
	x = 0
	y = 1
	while ( true )
	do
		iteration = iteration + 1
		if ( iteration % 2 == 0 )
		then
			test = test + x
		else
			test = test - x
		end
		z = x + y
		x = y
		y = z
		if ( x > 999999999 )
		then
			break
		end
	end
	count = count + 1
end
print("iteration: ", iteration, " test: ", test)
