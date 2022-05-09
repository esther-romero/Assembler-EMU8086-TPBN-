
macro ingresaDatosCompu txtPC,txtMarca,cadpc,cadmar
    
local inicio ciclo ingresaMarca ciclo2 fin    

inicio:

    mov ah,9
    mov dx,offset txtPC
    int 21h
    
    mov cx,20
    mov si,offset cadpc    

ciclo:
    mov ah,1 
    int 21h
    cmp al,13
    je ingresaMarca
    mov [si],al
    inc si
    loop ciclo
    
     
ingresaMarca:

    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    mov dx,offset txtMarca
    int 21h
    
    mov cx,10
    mov si,offset cadmar
    
    
ciclo2:
    mov ah,1 
    int 21h
    cmp al,13
    je  fin
    mov [si],al
    inc si
    loop ciclo2


fin:
    mov bh,1
endm    