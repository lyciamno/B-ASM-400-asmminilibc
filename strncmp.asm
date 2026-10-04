global strncmp

strncmp:
    cmp rdx, 0     ; if n = 0 return 0
    je return_z

loop:
    mov bl, byte [rdi]  ; bl = s1[i]
    mov cl, byte [rsi]  ; cl = s2[i]
    cmp bl, cl
    jne done
    cmp bl, 0
    je return_z          ; if != return
    inc rdi
    inc rsi
    dec rdx
    cmp rdx, 0
    jne loop

return_z:
    xor rax, rax
    ret

done:
    sub bl, cl
    movsx rax, bl       ; stocker 8 bit -> 64 bit rax
    ret