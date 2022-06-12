#!/bin/sh 
#java -cp `clj -Spath`:./classes fib
java -cp `clojure-1.10 -Spath`:./classes fib
