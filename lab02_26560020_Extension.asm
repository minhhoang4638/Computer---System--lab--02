.data
board: .word 0,0,0,0,0,0,0,0,0

.text
.globl main
main:
    # Store 1 at cell (1,2)
    li   $s1, 1
    li   $s2, 2
    add  $t0, $s1, $s1    # 2r
    add  $t0, $t0, $s1    # 3r
    add  $t0, $t0, $s2    # 3r + c
    sll  $t0, $t0, 2      # byte offset
    la   $t1, board
    add  $t1, $t1, $t0
    li   $t2, 1
    sw   $t2, 0($t1)

    # Store 2 at cell (2,0)
    li   $s1, 2
    li   $s2, 0
    add  $t0, $s1, $s1
    add  $t0, $t0, $s1
    add  $t0, $t0, $s2
    sll  $t0, $t0, 2
    la   $t1, board
    add  $t1, $t1, $t0
    li   $t2, 2
    sw   $t2, 0($t1)

    li   $v0, 10
    syscall
