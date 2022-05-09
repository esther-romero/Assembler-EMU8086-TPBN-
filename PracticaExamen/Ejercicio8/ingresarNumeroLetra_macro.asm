include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio8\esParPrimo_macro.asm'

macro ingresarNumeroLetra ope    

local inicio verificarNumero menor10 operarNumero operarLetra es10 es11 es12 es13 es14 es15 multiLetra verificaSuma sumar fin finMacro

inicio:
    
    mov ah,7
    int 21h
    cmp al,13
    je finMacro
    mov bl,al
    cmp bl,'A'
    jb  verificarNumero
    cmp bl,'F'
    ja  inicio 
    jmp operarLetra
    
verificarNumero:
    sub bl,30h
    cmp bl,0
    jb inicio
    cmp bl,10
    ja  inicio
    
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    mov al,bl
    mov bl,ope
    mul bl
    mov bh,al
    mov bl,0
    push bx
    jmp verificaSuma
    
operarLetra:
    mov ah,2
    mov dl,bl
    int 21h
    
    cmp bl,'A'
    je es10
    cmp bl,'B'
    je es11
    cmp bl,'C'
    je es12
    cmp bl,'D'
    je es13
    cmp bl,'E'
    je es14
    cmp bl,'F'
    je es15
    
es10:
    mov bl,10
    jmp multiLetra
es11:
    mov bl,11    
    jmp multiLetra
es12:
    mov bl,12   
    jmp multiLetra
es13:
    mov bl,13     
    jmp multiLetra
es14:
    mov bl,14     
    jmp multiLetra
es15:
    mov bl,15     
    jmp multiLetra 
    
multiLetra:
    mov al,bl
    mov bl,ope ;opeeeeee
    mul bl
    mov bh,al
    mov bl,0
    push bx 
    jmp verificaSuma 
    
verificaSuma:
    mov ax,0
    mov dl,1
    cmp dl,ope
    je sumar
    jmp fin
    
sumar:
    
    mov bx,0
    mov dx,0
    pop bx
    pop dx
    add bh,dh
    push bx
    esPrimoPar
    jmp fin


finMacro:
    mov dh,3
fin: 
    mov dl,1        
endm


