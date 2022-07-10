#### basic language speed test

This is NOT a comprehensive test at all, I am simply bored. Languages have much more to them than which can count faster.

The test involves simple conditions, calculate the fibonacci sequence until it is past 999 million, then repeat this task 1 billion times.

This only measures the speed of handling these integers but I found the results very interesting.

I've added some extra math to force compilers to not completely inline the loops.

| Language           | time (seconds) | time (minutes) | memory usage | binary size | info|
|--------------------|:---------------|:---------------|:-------------|:------------|:----|
| asm (nasm)         | 23.21 seconds    | 0.39 minutes   | 4 KiB        | 4.8 KiB     | v2.15.05-1 elf64
| Rust               | 24.34 seconds    | 0.41 minutes   | 976 KiB      | 281 KiB     | v1.60.0, target release
| Go                 | 31.00 seconds    | 0.52 minutes   | 1 MiB        | 1.7 MiB     | v1.18.1
| v                  | 31.76 seconds    | 0.53 minutes   | 900 KiB      | 105 KiB     | 0.2.4 441637e prod
| C++ (gcc)          | 32.01 seconds    | 0.53 minutes   | 2 MiB        | 16 KiB      | v11.2.1, Ofast, march native, std 20 
| C (gcc)            | 33.91 seconds    | 0.57 minutes   | 884 KiB      | 15 KiB      | v11.2.1, Ofast, march native, C99
| Zig                | 35.54 seconds    | 0.59 minutes   | 4 KiB        | 100 KiB     | v0.9.1, ReleaseFast
| C++ (clang)        | 35.63 seconds    | 0.59 minutes   | 2 MiB        | 16 KiB      | v13.0.1, O3, march native, std 20 
| C (clang)          | 35.84 seconds    | 0.60 minutes   | 904 KiB      | 15 KiB      | v13.0.1, O3, march native, C99 
| Python jit         | 38.36 seconds    | 0.64 minutes   | 121 MiB      |             | v3.9.11, numba v0.55.1 
| Java               | 53.65 seconds    | 0.90 minutes   | 33 MiB       | 1.2 KiB     | openjdk v17.0.2
| Java               | 56.21 seconds    | 0.94 minutes   | 33 MiB       | 1.2 KiB     | openjdk v11.0.14
| Luajit             | 235.63 seconds   | 3.93 minutes   | 1 MiB        |             | v2.05
| node JS            | 525.52 seconds   | 8.76 minutes   | 37 MiB       |             | v14.17.6
| Nim node JS danger | 530.19 seconds   | 8.84 minutes   | 35 MiB       |             | v16.14.2 (compiled with Nim v1.6.0)
| Nim native         | 972.87 seconds   | 16.21 minutes  | 996 Ki B     | 110 KiB     | v1.6.6
| bun JS             | 1747.23 seconds  | 29.12 minutes  | 33 MiB       |             | v0.1.2
| Nim bun JS danger  | 1769.79 seconds  | 29.50 minutes  | 33 MiB       |             | v0.1.2 (compiled with Nim v1.6.0)
| clojurescript      | 11981.65 seconds | 199.42 minutes | 84 MiB       |             | v1.11.1.1113
| mksh               | 9653.42 seconds  | 160.9 minutes  | 896 KiB      |             | R59
| Python 3           | 10330.98 seconds | 172.2 minutes  | 9 MiB        |             | v3.9.11
| Lua                | 11319.46 seconds | 188.7 minutes  | 1 MiB        |             | v5.1.5
| bash               | 12964.01 seconds | 216.1 minutes  | 3 MiB        |             | v5.1.16
| Nim node JS release| N/A              | N/A            | N/A          | N/A         | v1.6.0 over/underflow error 
| Nim bun JS release | N/A              | N/A            | N/A          | N/A         | v1.6.0 over/underflow error 

##### relevant hardware
* CPU: Ryzen 7 1700 @ 3.8ghz (all test were single threaded)
* RAM: 16 gb DDR4 @ 2133mhz
* Gentoo Linux 
* Kernel 5.18.1

##### future test
* deno with JS
* Kotlin
* pearl
* ruby

If you notice any issues create an issue or PR, in the future I hope to test memory performance. I am not experienced in many of these languages, so if the test is coded in a poor way then please make a PR!
