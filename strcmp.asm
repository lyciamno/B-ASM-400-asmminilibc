global strcmp

strcmp:
    mov bl, byte [rdi]      ; i = 0
    mov cl, byte [rsi]

loop:
    cmp bl, 0               ; if s1[i] == '\0'
    je check_str2               ; if true return
    cmp cl, 0               ; if s2[i] == '\0'
    je check_str1               ; if true return
    cmp bl, cl              ; cmp s1 et s2
    jne return              ; if != return
    inc rdi
    inc rsi
    mov bl, byte [rdi]      ; bl = s1[i + 1]
    mov cl, byte [rsi]      ; cl = s2[i +1]
    jmp loop

check_str1:
    cmp cl, 0
    je return
    jmp return

check_str2:
    cmp bl, 0
    je return
    jmp return

return:
    sub bl, cl              ; s1[i] - s2[i]
    movsx rax, bl
    ret