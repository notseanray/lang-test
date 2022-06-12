#include <iostream>

int main() {
	unsigned long long iter = 0;
	int test = 0;
	for (int n = 0; n < 1000000000; n++) {
		int x = 0;
		int y = 1;
		while (true) {
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
	std::cout << "iter" << iter << " " << test << "\n";
	return 0;
}
