    .globl compareAges
compareAges:
    movl 4(%rdi), %eax
    cmpl 4(%rsi), %eax
    jne .Lnot_equal

    movl $1, %eax
    ret

.Lnot_equal:
    movl $0, %eax
    ret