#!/bin/bash
g++ -Ofast -march=native -std=c++20 ./fib.cpp -o fibgcc
clang++ -O3 -march=native -std=c++20 ./fib.cpp -o fibclang
