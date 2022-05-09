macro ingresarNit
    
local inicio cicloNit fin    
inicio:
    mov ah,9
    mov dx,offset cadNit
    int 21h
    
    mov ax,0
    mov dx,0
    
    mov ah,1
    int 21h
    mov bh,al
    mov ah,1
    int 21h
    mov bl,al
    push bx
    
cicloNit:
    mov ah,1
    int 21h
    cmp al,13
    je fin
    jmp cicloNit

cadNit db 'Ingrese nit: $' 

fin: 
    mov ah,1
endm 