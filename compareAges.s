    .globl compareAges
compareAges:
    mov 4(%rdi), %eax #eax = a -> age
    mov 4(%rsi), %edx #edx = b -> age

    cmp %edx, %eax #compare a -> age with b -> age
    jne not_equal # if not equal, return 0
    
    mov $1, %eax #equal, return 1
    ret

not_equal:
    mov $0, %eax
    ret
    

    