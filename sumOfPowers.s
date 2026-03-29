    .globl sumOfPowers
sumOfPowers:
    movl $0, %eax
    movl $1, %ecx
.Lloop_sp:
    cmp %edi, %ecx
    jg .Ldone_sp

    movl %ecx, %edx
    imull %ecx, %edx
    addl %edx, %eax

    incl %ecx
    jmp .Lloop_sp

.Ldone_sp:
    ret
    