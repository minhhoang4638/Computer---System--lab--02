# Listing 8 - capitalize selected letters in a string
# $s0 = address of the first byte of str1

.data
str1: .ascii "nguyen van an"
tag:  .ascii " [end]"
nl:   .ascii "\n"

.text
.globl main
main:
    la   $s0, str1

    # Capitalize bytes at offsets 0, 7, and 11
    lb   $t0, 0($s0)
    addi $t0, $t0, -32
    sb   $t0, 0($s0)

    lb   $t0, 7($s0)
    addi $t0, $t0, -32
    sb   $t0, 7($s0)

    lb   $t0, 11($s0)
    addi $t0, $t0, -32
    sb   $t0, 11($s0)

    # Print the string and a newline
    li   $v0, 4
    add  $a0, $s0, $zero
    syscall

    li   $v0, 4
    la   $a0, nl
    syscall

    li   $v0, 10
    syscall
