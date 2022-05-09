macro salto_enter 
local salto

salto:   
    push ax 
    push dx
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

    pop dx
    pop ax
endm     