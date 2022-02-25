public class Main {
	public static void main(String[] args) {
		long iteration = 0;
		int test = 0;
		for (int n = 0; n < 1000000000; n++) {
			int x = 0, y = 1;
			while (true) {
				iteration += 1;
				if (iteration % 2 == 0) {
					test += x;
				}
				else {
					test -=x;
				}
				int i = x + y;
				x = y;
				y = i;
				if (x > 999999999) { break; }
			}
		}
		System.out.println("iter: " + iteration + " " + test);
	}
}
