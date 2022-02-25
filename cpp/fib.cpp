#include <chrono>
#include <iostream>

int main() {
	std::chrono::steady_clock::time_point begin = std::chrono::steady_clock::now();
	unsigned long long iter = 0;
	int test = 0;
	for (int n = 0; n < 1000000000; n++) {
		int x = 0;
		int y = 1;
		while (true) {
			iter++;
			if (iter % 2 == 0) {
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
	std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();	
	std::cout << "done in: " << std::chrono::duration_cast<std::chrono::nanoseconds> (end - begin).count() << "[ns]" << "iter" << iter << " " << test << "\n";
	return 0;
}
