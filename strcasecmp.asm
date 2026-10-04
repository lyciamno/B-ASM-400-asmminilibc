global strcasecmp

strcasecmp:
    cmp rdx, 0
    je return

loop:
    mov bl, byte [rdi] ; bl = s1[i]
    mov cl, byte [rsi] ; cl = s2[i]
    cmp bl, 'A' ; if bl is maj
    jl convert_bl ; if bl < A
    cmp bl, 'Z'
    jg convert_bl ; if bl > Z
    add bl, 32 ; maj

convert_bl:
    cmp cl, 'A'
    jl convert_cl
    cmp cl, 'Z'
    jg convert_cl
    add cl, 32 ; maj

convert_cl:
    cmp bl, 0
    je return
    cmp cl, 0
    je return
    cmp bl, cl
    jne return
    inc rdi
    inc rsi
    dec rdx
    cmp rdx, 0
    je return
    jmp loop

return:
    sub bl, cl
    movsx rax, bl
    ret
