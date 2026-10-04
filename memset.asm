global memset

memset:
    mov rax, rdi
    cmp rdx, 0
    je done

loop:
    mov byte [rdi], sil
    inc rdi
    dec rdx
    jg loop     ; while n > 0 continue

done:
    ret
