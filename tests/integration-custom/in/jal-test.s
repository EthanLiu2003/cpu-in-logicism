    .data
data_val: .word 0x12345678

    .text
    .globl _start
_start:
    li ra, 0x4000
    la t0, data_val
    lw t1, 0(t0)
    li t2, 0x400
    sw t1, 0(t2)
    li t0, 4
    jalr t0, ra

after_jump:
    lw t1, 0(t2)
    nop
    j .

    .data
    .align 2
    .word 0x12345678
