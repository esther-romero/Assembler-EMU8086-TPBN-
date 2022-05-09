
macro mostrar rl,rh,cadMa,cadMe  
    
local continuarProceso1 continuarProceso2
local incrementar1 incrementar2 fin inicio
      
inicio:
    mov dl,rl ;rh
    mov dh,rh ;rl
    
    mov cx,500
    mov si,offset cad
    jmp incrementar1
continuarProceso1:
    mov dl,[si]
    
    mov cx,500
    mov si,offset cad
    jmp incrementar2
continuarProceso2:
    mov dh,[si]
    
    
    mov bx,dx
    mov ah,9
    mov dx,offset cadMa
    int 21h    
    mov ah,2 
    mov dl,bl
    int 21h
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    mov ah,9
    mov dx,offset cadMe
    int 21h
    mov ah,2
    mov dl,bh
    int 21h
    jmp fin
    
    
    
    
incrementar1:
    cmp dl,0 ;rh
    je  continuarProceso1
    inc si
    sub dl,1 ;rh
    jmp incrementar1
    
incrementar2:
    cmp dh,0 ;rh
    je  continuarProceso2
    inc si
    sub dh,1 ;rh
    jmp incrementar2                 

fin:
    mov cx,0
    pop cx 

endm 




