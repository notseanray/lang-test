#!/bin/sh
sbcl --load fib.lisp --eval "(save-lisp-and-die \"fib\" :toplevel #'main :executable t)"
