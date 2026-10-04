global strrchr

strrchr:
    xor rax, rax
    xor rcx, rcx

loop:
    mov al, byte [rdi + rcx] ; al = str[i]
    cmp al, 0           ; if al == '\0'
    je if_null
    cmp al, sil         ; if al = car chercher
    jne next            ; if false continue la boucle
    mov rax, rdi        ; rax = rdi
    add rax, rcx

next:
    inc rcx
    jmp loop

if_null:
    cmp sil, 0
    jne done
    mov rax, rdi
    add rax, rcx

done:
    ret