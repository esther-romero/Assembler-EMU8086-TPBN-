    
macro verificarCelular cad

local inicio verificar veriSuma veri5 veri9 veri1 veri67 res correcto incorrecto fin

inicio:
    mov ah,1
    int 21h
    cmp al,13
    je verificar
    mov ah,0
    sub al,30h
    push ax
    add cx,1
    jmp inicio
    
    
verificar:
    pop ax
    cmp cx,12
    ja  incorrecto
    cmp cx,1
    je  veriSuma
    
    cmp cx,2
    je veri5
    
    cmp cx,3
    je veri9
    
    cmp cx,4
    je veri1
    
    cmp cx,5
    je veri67
    
    cmp al,0
    jb  incorrecto
    cmp al,9
    ja  incorrecto
    sub cx,1
    jmp verificar
    
    
veriSuma:
    add al,30h
    cmp al,'+'
    je  correcto
    jmp incorrecto
    
veri5:
    cmp al,5
    jne incorrecto
    sub cx,1
    jmp verificar
    
veri9:
    cmp al,9
    jne incorrecto
    sub cx,1
    jmp verificar
    
veri1:
    cmp al,1
    jne incorrecto
    sub cx,1
    jmp verificar
    
veri67:
    cmp al,7
    je res
    cmp al,6
    jne incorrecto
    sub cx,1
    jmp verificar
    
res:
    sub cx,1
    jmp verificar
    
correcto:
    mov bx,0
    mov bh,6
    jmp fin
    
incorrecto:
    mov ah,9
    mov dx,offset cad
    int 21h              

fin:
    mov ah,4
endm 


 