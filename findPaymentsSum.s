    .globl findPaymentsSum
findPaymentsSum:
    movl $0, %eax
    movl $0, %ecx

.Lloop_fp:
    cmp $esi, %ecx
    fge .Ldone_fp

    movl 8(%rdi, %rcx, 4), %edx
    addl %edx, %eax

    incl %ecx
    jmp .Lloop_fp

.Ldone_fp:
    ret