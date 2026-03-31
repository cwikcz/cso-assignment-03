    .globl findPaymentsSum
findPaymentsSum:
    mov $0, %eax #sum = 0
    mov $0, %rcx #i = 0

loop:
    cmp %esi, %ecx #if i>= num, stop
    jge done

    mov 8(%rdi, %rcx, 4), %edx # loads the i-th payment (8 is the offset of payments[0], 4 is the size of each payment)
    add %edx, %eax # sum += payments[i]

    inc %rcx # i++
    jmp loop

done:
    ret
    
