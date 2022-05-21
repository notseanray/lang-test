from numba import jit

@jit
def main():
    iteration = 0
    test = 0
    for n in range(1000000000):
        x = 0
        y = 1
        while True:
            iteration += 1
            if iteration % 2 == 0:
                test += x
            else:
                test -= x
            i = x + y
            x = y
            y = i
            if (x > 999999999):
                break
    print("iter: ", iteration, " test: ", test)
if __name__ == "__main__":
    main()

