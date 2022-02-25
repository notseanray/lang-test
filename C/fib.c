#include <stdio.h>

int main() {
	long long int iter = 0;
	int test = 0;
	for (int n = 0; n < 1000000000; n++) {
		int x = 0, y = 1;
		while (1) {
			iter++;
			if (iter & 1) {
				test += x;
			}
			else {
				test -= x;
			}
			int i = x + y;
			x = y;
			y = i;
			if (x > 999999999) { break; }
		}
	}
	printf("done in: %lld %d", iter, test);
	return 0;
}
