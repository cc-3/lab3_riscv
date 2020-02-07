.data
  n: .word 9

.text

.globl __start

__start:
  li t0, 0
  li t1, 1
  la t3, n
  lw t3, 0(t3)

fib:
  beq t3, x0, finish
  add t2, t1, t0
  mv t0, t1
  mv t1, t2
  addi t3, t3, -1
  j fib

finish:
  li a0, 1
  mv a1, t0
  ecall # print integer ecall
  li a0, 10
  ecall # terminate ecall
