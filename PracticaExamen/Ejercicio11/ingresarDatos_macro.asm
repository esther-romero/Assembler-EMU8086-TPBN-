
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio11\limpiaSalta_macro.asm'

macro ingresarDatos cadN,cadAp,cadC,cadT,cadB 

local inicio nombre mensajeApellido apellido mensajeCi ci mensajeTele telefono mensajeBarrio barrio fin

inicio:
    mov cx,0
    mov ah,9
    mov dx,offset cadN 
    int 21h

nombre:
    mov ah,1
    int 21h
    cmp al,13
    je mensajeApellido
    jmp nombre
    
mensajeApellido:
    limpiaSalta 
    mov ah,9
    mov dx,offset cadAp
    int 21h
    
apellido:
    mov ah,1
    int 21h
    cmp al,13
    je mensajeCi
    jmp apellido

mensajeCi:
    limpiaSalta     
    mov ah,9
    mov dx,offset cadC
    int 21h
    
ci:
    mov ah,1
    int 21h
    cmp al,13
    je mensajeTele
    jmp ci

mensajeTele:
    limpiaSalta 
    mov ah,9
    mov dx,offset cadT
    int 21h
    
telefono:
    mov ah,1
    int 21h
    cmp al,13
    je mensajeBarrio
    sub al,30h
    mov ah,0
    push ax
    add cl,1
    jmp telefono    
    
mensajeBarrio:
    push cx
    limpiaSalta
    mov ah,9
    mov dx,offset cadB
    int 21h
    pop cx
    mov ch,0
    
barrio:
    mov ah,1
    int 21h
    cmp al,13
    je  fin
    mov ah,0
    push ax
    add ch,1
    jmp barrio
    
fin: 
    mov ah,1
endm        
    
