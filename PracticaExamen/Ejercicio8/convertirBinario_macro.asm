
macro convertirBinario n 
    
local inicio ciclo contador mostrar add1 add2 add3 mostrarConcleto
    
inicio:    
    mov  cx,0 
    mov  ax,0
    mov  al,n
    mov  ah,0
ciclo:    
    mov  dx,0
    mov  dl,2
    div  dl
    mov  bh,al
    mov  bl,ah
    push bx 
    inc  cx
    cmp  bh,1
    je   contador 
    mov  ax,0
    mov  al,bh
    jmp  ciclo  

contador:
    add cx,1
    cmp cx,2
    je add2
    cmp cx,3
    je add1
    cmp cx,5
    je add3
    cmp cx,6
    je add2
    cmp cx,7
    je add1
    jmp mostrar
    
add1:
    mov ah,2
    mov dl,0
    add dl,30h
    int 21h
    jmp mostrar
        
add2:
    mov ah,2
    mov dl,0
    add dl,30h
    int 21h
    mov ah,2
    mov dl,0
    add dl,30h
    int 21h
    jmp mostrar
    
add3:
    mov ah,2
    mov dl,0
    add dl,30h
    int 21h
    mov ah,2
    mov dl,0
    add dl,30h
    int 21h
    mov ah,2
    mov dl,0
    add dl,30h
    int 21h
    jmp mostrar
    
mostrar:
    sub cx,1
    mov bx,0
    pop bx
    push bx
    
    mov ah,2
    mov dl,bh
    add dl,30h
    int 21h 
    jmp mostrarConcleto

mostrarConcleto:
    mov bx,0
    pop bx
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    loop mostrarConcleto
endm
