global memcpy

memcpy:
    push rsi
    push rdi
    push rcx
    mov rcx, rdx
    cmp rcx, 0
    je done
    mov rax, rdi

loop:
    mov al, byte [rsi]  ; al = *src
    mov byte [rdi], al  ; *dest = al
    inc rsi
    inc rdi
    dec rcx
    jnz loop

done:
    mov rax, rdi
    pop rcx
    pop rdi
    pop rsi
    ret
