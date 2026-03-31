    .globl findSalariesSum
findSalariesSum:
    mov $0, %eax #sum = 0
    mov $0, %ecx #i = 0

loop:
    cmp %esi, %ecx #if i >= size, stop
    jge done

    mov %ecx, %edx #edx = i
    imul $12, %edx #edx = i*12

    mov 8(%rdi, %rdx), %edx
    add %edx, %eax

    inc %ecx
    jmp loop

done:
    ret

    