#!/bin/sh

# JVM
/opt/jdk-16.0.2/bin/java -cp `clojure-1.10 -Spath`:./ -Dclojure.compile.path=classes clojure.lang.Compile fib

# Node (Using shadow-cljs)
shadow-cljs release app
