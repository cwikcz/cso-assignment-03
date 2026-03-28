    .globl findSalariesSum
findSalariesSum:
    movl $0, %eax
    movl $0, %ecx

.Lloop_fs:
    cmp %esi, %ecx
    jge .Ldone_fs

    movl 8(%rdi, %rcx, 12), %edx
    addl %edx, %eax

    incl %ecx
    jmp .Lloop_fs

.Ldone_fs:
    ret
    