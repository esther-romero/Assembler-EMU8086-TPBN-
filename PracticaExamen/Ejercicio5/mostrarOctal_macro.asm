macro mostrarOctal num 
    
local inicio mostrar2 mostrar3 fin
    
inicio:    
    
    mov ax,0
    mov al,num
    mov cl,8
    div cl
    mov bh,al
    mov bl,ah
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
    
mostrar2:
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    
    mov bx,0
    pop bx
    mov dl,bl
    add dl,30h
    int 21h
    jmp fin
    
    
mostrar3:
    mov bx,0
    pop bx
    
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    
    mov bx,0
    pop bx
    
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    
    mov bx,0
    pop bx
    
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    jmp fin
    
fin:
    mov ah,5
endm            



