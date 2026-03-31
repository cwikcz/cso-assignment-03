    .globl sumOfPowers
sumOfPowers:
    mov $0, %eax # sum = 0
    mov $1, %ecx # i = 1

loop:
    cmp %edi, %ecx # compare i with n
    jg done # if i > n, exit loop

    mov %ecx, %edx # edx = i
    imul %ecx, %edx # edx = i * i
    add %edx, %eax # sum += i*i

    inc %ecx #i++
    jmp loop

done:
    ret
    