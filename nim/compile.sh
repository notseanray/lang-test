#!/bin/sh 
nim c -d:danger -o:fib_native_danger fib.nim 
nim c -d:release -o:fib_native_release fib.nim 
nim js -d:danger -o:fib_js_danger.js fib.nim 
nim js -d:release -o:fib_js_release.js fib.nim 
