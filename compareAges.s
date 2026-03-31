    .globl compareAges
compareAges:
    mov 4(%rdi), %eax #eax = a -> age
    mov 4(%rsi), %edx #edx = b -> age

    cmp %edx, %eax #compare a -> age with b -> age
    jl less_than #a < b
    jg greater_than #a > b

    mov $0, %eax #equal
    ret

less_than:
    mov $-1, %eax
    ret
greater_than:
    mov $1, %eax
    ret
    