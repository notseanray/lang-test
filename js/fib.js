let iter = 0, x = 0, y = 0;
let test = 0;

for (let i = 0; i < 1000000000; i++) {
	let x = 0;
	let y = 1;
	while (true) {
		iter++;
		if (iter % 2 == 0) {
			test += x;
		}
		else {
			test -= x;
		}
		let i = x + y;
		x = y;
		y = i;
		if (x > 999999999) {
			break;
		}
	}
}
console.log(`iter: ${iter} ${test}`)
