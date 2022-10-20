        .cpu cortex-m4
        .eabi_attribute 20, 1
        .eabi_attribute 21, 1
        .eabi_attribute 23, 3
        .eabi_attribute 24, 1
        .eabi_attribute 25, 1
        .eabi_attribute 26, 1
        .eabi_attribute 30, 2
        .eabi_attribute 34, 1
        .eabi_attribute 18, 4
        .file   "_start.c"
        .text
        .align  1
        .p2align 2,,3
        .global _start
        .arch armv7e-m
        .syntax unified
        .thumb
        .thumb_func
        .fpu softvfp
        .type   _start, %function
_start:
        @ Naked Function: prologue and epilogue provided by programmer.
        @ Volatile: function does not return.
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        movs    r1, #0
        mov     r0, r1
        bl      main
.L2:
        b       .L2
        .size   _start, .-_start
        .ident  "GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
