fn main() {
	fib()
}

fn fib() {
	mut iteration := u64(0)
	mut test := 0
	for _ in 0..1000000000 {
		mut x := 0
		mut y := 1
		for {
			iteration++
			if iteration & 1 == 0 {
				test += x
			} else {
				test -= x
			}
			i := x + y
			x = y
			y = i 
			if x > 999999999 {
				break
			}
		}
	}
	println("iter: $iteration test: $test")
}
