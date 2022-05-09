
macro verificarContrasenia cad

local inicio contrasenia continuar verificarLetra verNumero fin

inicio:
    mov ah,9
    mov dx,offset cad
    int 21h

    mov bx,0
contrasenia:
    mov  ah,7
    int  21h
    cmp  al,13
    je   fin
    jmp  verificarLetra
continuar:   
    mov  ah,2
    mov  dl,'*'
    int  21h
    jmp  contrasenia 
    
verificarLetra:
    cmp  al,'A'
    jb   verNumero
    cmp  al,'Z'
    ja   continuar
    add  bl,1
    jmp  continuar

verNumero:
    sub  al,30h
    cmp  al,0
    jb   continuar
    cmp  al,9
    ja   continuar
    add  bh,1
    jmp  continuar
    
   
fin: 

    mov ah,1
endm