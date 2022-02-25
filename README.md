#### basic language speed test

This is NOT a comprehensive test at all, I am simply bored. Languages have much more to them than which can count faster.

The test involves simple conditions, calculate the fibonacci sequence until it is past 999 million, then repeat this task 1 billion times.

This only measures the speed of handling these integers but I found the results very interesting.

I've added some extra math to force the Rust compiler to not completely vectorize the loop.

| Language    | time (seconds) | time (minutes) | memory usage | binary size | info|
|-------------|:---------------|:---------------|:-------------|:------------|:----|
| Rust        | 21 seconds     | 0.3 minutes    | 940 KiB      | 3.5 MiB     | v1.58.0, target release
| asm (nasm)  | 22 seconds     | 0.3 minutes    | 4 KiB        | 4.8 KiB     | v2.15.05-1 elf64
| C++ (gcc)   | 31 seconds     | 0.5 minutes    | 2 MiB        | 16 KiB      | v11.2.0, Ofast, march native, std 20 
| C (gcc)     | 34 seconds     | 0.6 minutes    | 872 KiB      | 15 KiB      | v11.2.0, Ofast, march native, C99
| Go          | 35 seconds     | 0.6 minutes    | 1 MiB        | 1.7 MiB     | v1.17.7
| C (clang)   | 36 seconds     | 0.6 minutes    | 876 KiB      | 15 KiB      | v13.0.1, O3, march native, C99 
| C++ (clang) | 41 seconds     | 0.7 minutes    | 2 MiB        | 16 KiB      | v13.0.1, O3, march native, std 20 
| Java        | 54 seconds     | 0.9 minutes    | 32 MiB       | 1.2 KiB     | v17.0.2
| Luajit      | 253 seconds    | 4.2 minutes    | 1 MiB        |             | v2.05
| node JS     | 528 seconds    | 8.8 minutes    | 37 MiB       |             | v17.0
| mksh        | 9674 seconds   | 161.2 minutes  | 896 KiB      |             | R59
| Python 3    | 11167 seconds  | 186.1 minutes  | 9 MiB        |             | v3.9.9
| Lua         | 11434 seconds  | 190.6 minutes  | 1 MiB        |             | v5.1.5
| bash        | 12625 seconds  | 210.4 minutes  | 1 MiB        |             | v5.1.16

##### relevant hardware
* CPU: Ryzen 7 1700 @ 3.8ghz (all test were single threaded)
* RAM: 16 gb DDR4 @ 2133mhz


##### future test
* deno with JS
* Rust no std
* Kotlin


If you notice any issues create an issue or PR, in the future I hope to test memory performance.
