.rodata
  msg1: .asciiz "Enter a number: "
  msg2: .asciiz "\nresult = "

.text

.globl __start

__start:
  li a0, 4
  la a1, msg1
  ecall # Print string
  li a0, 5
  ecall # Read int
  jal factorial
  mv s0, a0
  la a1, msg2
  li a0, 4
  ecall # Print string
  mv a1, s0
  li a0, 1
  ecall # Prtint int
  li a1, '\n'
  li a0, 11
  ecall # Print char
  li a0, 10
  ecall # Exit

factorial:
  # YOUR CODE HERE
