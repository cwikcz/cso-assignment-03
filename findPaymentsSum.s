    .globl findPaymentsSum
findPaymentsSum:
    mov $0, %eax #sum = 0
    mov $0, %ecx #i = 0

loop_pay:
    cmp $esi, %ecx #if i>= num, stop
    jge done_pay

    mov 8(%rdi, %ecx, 4), %edx # edx = c -> payments[i]
    add %edx, %eax # sum += payments[i]

    inc %ecx # i++
    jmp loop_pay

done_pay:
    ret
