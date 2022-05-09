
macro ingresaFecha cad

local inicio agregar fin
    
inicio:
    mov ah,9
    mov dx,offset cad
    int 21h
    
    mov ax,0
    mov dx,0
    
    mov ah,1
    int 21h
    sub al,30h
    mov bl,al
    
    int 21h
    cmp al,13
    je agregar
    sub al,30h
    mov bh,al
    mov ax,0
    mov al,bl
    mov cl,10
    mul cl
    add al,bh
    mov ah,0
    push ax
    jmp fin
    
agregar:
    mov bh,0
    push bx
    jmp fin
    
fin:
    mov ah,4
endm    

