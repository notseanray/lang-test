#!/bin/bash
gcc fib.c -o fibgcc -Ofast -march=native -std=c99
clang fib.c -o fibclang -O3 -march=native -std=c99
