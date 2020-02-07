.data

# source array
source:
  .word   3
  .word   1
  .word   4
  .word   1
  .word   5
  .word   9
  .word   0

# dest array
dest:
  .word   0
  .word   0
  .word   0
  .word   0
  .word   0
  .word   0
  .word   0
  .word   0
  .word   0
  .word   0

.text

.globl __start

__start:
  li t0, 0
  la t1, source
  la t2, dest
loop:
  slli t3, t0, 2
  add t4, t1, t3
  lw t5, 0(t4)
  beq t5, x0, exit
  add t6, t2, t3
  sw t5, 0(t6)
  addi t0, t0, 1
  j loop
exit:
  li a0, 10
  ecall # Terminate ecall
