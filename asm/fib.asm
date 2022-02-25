; nasm -f elf64 fib.asm -f fib.o
; ld -o fib fib.o -m elf_x86_64
; written by sudo, not me
BITS 64
SECTION .text
    global  _start
_start:
    mov ecx, 3B9ACA00h
init:
    mov r8, 1
    xor r9, r9
    xor r10, r10
fib:
    mov r10, r9
    add r9, r8
    mov r8, r10
    cmp r9, 3B9AC9FFh
    jl fib
loop:
    sub ecx, 1
    jnz init
exit:
    mov     ebx, 0
    mov     eax, 1 
    int     80h
