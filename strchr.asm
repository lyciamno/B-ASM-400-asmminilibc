global strchr

strchr:
    xor rcx, rcx
    jmp loop

incr:
    inc rcx

loop:
    mov al, byte [rdi + rcx]
    cmp al, 0
    je ret_null
    cmp al, sil
    jne incr
    mov rax, rdi
    add rax, rcx
    ret

ret_null:
    xor rax, rax ; rax = 0
    ret
