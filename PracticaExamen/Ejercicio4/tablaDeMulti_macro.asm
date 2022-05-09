
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio4\tablaConParametroMulti_macro.asm'

macro tablaMulti
       
local inicio addBH operar fin limpiar  
       
inicio:    
    call limpiar
    
    pop ax
    pop bx
    
    sub bx,ax
    push bx
    
    call limpiar
    pop ax 
    mov cx,100
    div cx
    mov bh,al
    cmp bh,0
    je addBH

    mov al,dl
    mov cl,10
    div cl
    mov bl,ah
    push bx
    jmp operar 
    
addBH:
    mov al,dl
    mov cl,10
    div cl
    mov bh,al
    mov bl,ah
    push bx 
                
operar:                 
    tablaNumeroMulti bh
    call limpiar
    pop bx        
    tablaNumeroMulti bl
    jmp fin       
           

proc limpiar
    mov ax,0
    mov bx,0 
    mov cx,0
    mov dx,0
    ret
limpiar endp  

fin:
    mov ah,0
endm
    




