#!/bin/sh

# JVM
java -cp `clj -Spath`:./ -Dclojure.compile.path=classes clojure.lang.Compile fib

# Node (Using shadow-cljs)
shadow-cljs release app
