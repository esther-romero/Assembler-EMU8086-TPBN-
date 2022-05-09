macro mostrarHexadecimal num 
    
local inicio mostrar1 mostrar2 mostrarLetra mostrarA mostrarB mostrarC mostrarD mostrarE mostrarF mostrar3 fin
    
inicio:    
    
    mov ax,0
    mov al,num
    mov cl,16
    div cl
    mov bh,al; entero
    mov bl,ah; decimal
    cmp bh,2
    jb  mostrar1
    push bx 
    mov ax,0
    mov al,bh
    div cl
    mov bh,al
    mov bl,ah
    cmp bh,0
    je  mostrar2
    push bx
    
    mov ax,0
    mov al,bh
    div cl
    mov bh,al
    mov bl,ah
    push bx
    jmp mostrar3
mostrar1:
    mov ah,2
    mov dl,bh
    add dl,30h
    int 21h
    cmp bl,9
    ja  mostrarLetra
    mov dl,bl
    add dl,30h
    int 21h
    jmp fin

    
mostrar2: 

    cmp bl,9
    ja  mostrarLetra
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    
    mov bx,0
    pop bx
    cmp bl,9
    ja  mostrarLetra
    mov dl,bl
    add dl,30h
    int 21h
    jmp fin
    

mostrarLetra:
    cmp bl,10
    je mostrarA
    
    cmp bl,11
    je mostrarB
    
    cmp bl,12
    je mostrarC
    
    cmp bl,13
    je mostrarD
    
    cmp bl,14
    je mostrarE
    
    cmp bl,15
    je mostrarF

mostrarA:
    mov ah,2
    mov dl,'A'
    int 21h
    jmp fin
mostrarB:   
    mov ah,2
    mov dl,'B'
    int 21h
    jmp fin
mostrarC:   
    mov ah,2
    mov dl,'C'
    int 21h
    jmp fin
mostrarD:
    mov ah,2
    mov dl,'D'
    int 21h
    jmp fin
mostrarE:
    mov ah,2
    mov dl,'E'
    int 21h
    jmp fin
mostrarF:   
    mov ah,2
    mov dl,'F'
    int 21h
    jmp fin    
    
mostrar3:
    mov bx,0
    pop bx
    
    cmp bl,9
    ja  mostrarLetra
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    
    mov bx,0
    pop bx
    
    cmp bl,9
    ja  mostrarLetra
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    
    mov bx,0
    pop bx
    
    cmp bl,9
    ja  mostrarLetra
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    jmp fin

fin:
    mov ah,5
endm            







