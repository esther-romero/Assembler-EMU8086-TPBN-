
macro tablaNumero px 
                  
local inicio salto conti1 terminar conti multi showMayor10 mostrar10 fin 

inicio:    

    mov cx,0
    mov cx,10
    mov bl,px
    mov bh,1
    push bx 
    
salto:       
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    mov dl,bl
    add dl,30h
    int 21h
    mov dl,"+"
    int 21h
    mov dl,bh
    cmp dl,10
    je  mostrar10
    add dl,30h
    int 21h  
conti1:    
    mov dl,"="
    int 21h
    ;mov dl,6
    ;cmp dl,ope
    ;je  multi
    add bl,bh
terminar:    
    cmp bl,9
    jg  showMayor10
    add bl,30h
    mov dl,bl
    int 21h
conti:
    pop bx 
    add bh,1
    push bx
    
    loop salto
    
    jmp fin 
    
multi:
    mov al,bh
    mul bl
    mov bl,al
    jmp terminar    
             
             
showMayor10:
    mov ax,0
    mov dh,10
    mov al,bl 
    div dh
    mov bx,ax 
    
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    mov dl,bh
    add dl,30h
    int 21h
    jmp conti
              
mostrar10:
    mov ah,2
    mov dl,'1' 
    int 21h 
    mov dl,'0' 
    int 21h
    jmp conti1 
    
fin: 
    pop bx    
    
endm



