
macro mostrarDecimal rh

local add3 fin add1

    mov ax,0
    mov al,rh
    mov cl,100
    div cl
    mov bh,al
    mov bl,ah
    cmp bh,0
    jne  add3
    mov ax,0
    mov al,bl
    mov cl,10
    div cl
    mov bh,al
    mov bl,ah
    
    cmp bh,0
    je add1
    mov ax,0
    mov ah,2
    mov dl,bh
    add dl,30h
    int 21h
    mov dl,bl
    add dl,30h
    int 21h
    jmp fin 
add3: 
    mov ax,0
    mov al,bl
    mov cl,10
    div cl
    mov bl,al
    mov ch,ah
    
    mov ax,0
    mov ah,2
    mov dl,bh
    add dl,30h
    int 21h
    mov dl,bl
    add dl,30h
    int 21h
    mov dl,ch
    add dl,30h
    int 21h
    
add1:
    mov dl,bl
    mov ah,2
    add dl,30h
    int 21h      

fin: 
    mov dl,1
endm



