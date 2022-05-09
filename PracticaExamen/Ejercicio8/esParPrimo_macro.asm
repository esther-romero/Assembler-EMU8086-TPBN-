

macro esPrimoPar
    
local  aniadir fin 
    
    pop bx
    
    mov al,bh
    mov bl,2
    div bl
    cmp ah,0
    je aniadir
    mov ax,0
    mov al,bh
    mov bl,3
    div bl
    cmp ah,0
    je fin
    mov ax,0
    mov al,bh
    mov bl,5
    div bl
    cmp ah,0
    je fin
    mov ax,0
    mov al,bh
    mov bl,7
    div bl
    cmp ah,0
    je fin
    mov ax,0
    mov al,bh
    mov bl,11
    div bl
    cmp ah,0
    je fin
    mov ax,0
    mov al,bh
    mov bl,13
    div bl
    cmp ah,0
    je fin
    mov bl,0
    push bx
    jmp fin
    
    
aniadir:
    mov bl,0
    push bx
    jmp fin
    
fin: 
    mov ah,1
endm
