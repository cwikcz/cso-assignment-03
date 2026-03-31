    .globl compareAges
compareAges:
    mov 4(%rdi), %eax #loads the age value 
    mov 4(%rsi), %edx #loads the age value

    cmp %edx, %eax #compares %edx and %eax
    jne not_equal # if not equal, return 0
    
    mov $1, %eax #equal, return 1
    ret

not_equal:
    mov $0, %eax #loads 0
    ret
    

    