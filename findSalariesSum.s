    .globl findSalariesSum
findSalariesSum:
    movl $0, %eax
    movl $0, %ecx

.Lloop_fs:
    cmp %esi, %ecx
    jge .Ldone_fs

    movl %ecx, %edx
    imull $12, %edx, %edx
    movl 8(%rdi, %rdx), %r8d
    addl %r8d, %eax

    incl %ecx
    jmp .Lloop_fs

.Ldone_fs:
    ret

    