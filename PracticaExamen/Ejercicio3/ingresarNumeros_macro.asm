include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio3\salto_enter_macro.asm'

macro ingresarNumeros
    
local inicio inicio2 fin    

inicio:
    call limpiar
    mov ah,7
    int 21h
    cmp al,13
    je fin
    sub al,30h
    cmp al,0
    jb inicio
    cmp al,9
    ja inicio
    mov ah,0
    push ax
    mov ah,2
    mov dl,al
    add dl,30h 
    int 21h
    call limpiar
ingresar2:
    mov ah,7
    int 21h 
    cmp al,13
    je inicio2
    sub al,30h
    cmp al,0
    jb ingresar2
    cmp al,9
    ja ingresar2
    mov ah,0
    push ax
    mov ah,2
    mov dl,al
    add dl,30h 
    int 21h
    call limpiar
    pop bx
    pop ax
    mov cl,10
    mul cl
    add al,bl
    mov bx,0
    mov bl,al
    push bx
    call salto
    jmp inicio 
    
inicio2:
    call salto
    jmp inicio    

proc salto
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    ret
salto endp

proc limpiar
     
    mov ax,0
    mov bx,0
    mov cx,0
    mov dx,0
    
    ret
    
limpiar endp    
    
fin:
    mov ah,4
endm