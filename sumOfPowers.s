    .globl sumOfPowers
sumOfPowers:
    mov $0, %eax # sum = 0
    mov $1, %ecx # i = 1

loop:
    cmp %edi, %ecx # compare i with n
    jg done # if i > n, exit loop

    mov %ecx, %edx # copy the value from %ecx into %edx
    imul %ecx, %edx # multiply %edx by %ecx
    add %edx, %eax # add %edx to %eax

    inc %ecx #i++
    jmp loop

done:
    ret
    