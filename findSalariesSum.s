    .globl findSalariesSum
findSalariesSum:
    mov $0, %eax #sum = 0
    mov $0, %ecx #i = 0

loop_sal:
    cmp %esi, %ecx #if i >= size, stop
    jge done_sal

    mov %ecx, %edx #edx = i
    imul $12, %edx #edx = i*12

    mov 8(%rdi, %rdx), %r8d #r8d = e[i].salary
    add %r8d, %eax #sum += salary

    inc %ecx
    jmp loop_sal

done_sal:
    ret

    