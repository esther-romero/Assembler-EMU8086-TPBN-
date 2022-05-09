macro contar
    
local verificarCadena continuarProceso contador   
local salto finalizar incrementar fin

verificarCadena:
    mov cx,500
    mov si,offset cad
    mov ah,dh
    cmp ah,0
    jne incrementar
continuarProceso:    
    mov bl,[si]
    cmp bl,'$'
    jne ingresaCadena
    jmp fin

ingresaCadena:
    mov cx,500
    mov si,offset cad 
    mov dl,0
    push dx
    
contador:
    mov  ax,0
    mov  al,[si]
    cmp  al,'$'
    je   finalizar
    cmp  al,bl
    jne  salto
    mov  dx,0
    pop  dx
    add  dl,1
    push dx
salto:    
    inc si
    jmp contador
    
finalizar:
    mov  dx,0
    pop  dx
    sub  dl,1
    push dx
    add  dh,1
    jmp  verificarCadena    
    
incrementar:
    cmp ah,0
    je  continuarProceso
    inc si
    sub ah,1
    jmp incrementar
    
fin:
    mov ah,1
endm        