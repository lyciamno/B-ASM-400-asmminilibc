global strcspn

loop_s1:
    mov dl, byte [rdi]
    cmp dl, 0
    je done
    mov rsi, rdx
    mov rcx, rsi

loop_s2:
    mov bl, byte [rcx]
    cmp bl, 0
    je suit_s1
    cmp dl, bl
    je done
    inc rcx
    jmp loop_s2

suit_s1:
    inc rdi
    inc rax
    jmp loop_s1

done:
    ret