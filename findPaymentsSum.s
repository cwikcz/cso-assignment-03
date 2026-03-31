    .globl findPaymentsSum
findPaymentsSum:
    mov $0, %eax #sum = 0
    mov $0, %rcx #i = 0

loop:
    cmp %esi, %ecx #if i>= num, stop
    jge done

    mov 8(%rdi, %rcx, 4), %edx # edx = c -> payments[i]
    add %edx, %eax # sum += payments[i]

    inc %rcx # i++
    jmp loop

done:
    ret
    
