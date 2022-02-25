package main

import (
	"fmt"
	"time"
)

func main() {
	start := time.Now();
	iter := 0;
	test := 0;
	for n :=0; n < 1000000000; n++ {
		x := 0;
		y := 1;
		for true {
			iter += 1;
			if (iter % 2 == 0) {
				test += x; 
			} else {
				test -= x;
			}
			i := x + y;
			x = y;
			y = i;
			if x > 999999999 { break; }
		}
	}

	fmt.Println("done in: ", time.Since(start), " iter: ", iter, " ", test);
}
