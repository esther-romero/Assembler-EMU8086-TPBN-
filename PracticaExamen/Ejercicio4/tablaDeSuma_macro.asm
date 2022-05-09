
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio4\tablaConParametro_macro.asm'

macro tablaSuma
       
local inicio contiTabla contiTabla2  partir fin limpiar  
       
inicio:    
    call limpiar
    pop ax 
    mov cx,100
    div cx
    mov bh,al
    cmp bh,0
    jne  add3
    mov al,dl
    mov cl,10
    div cl
    mov bh,al
    cmp bh,0
    jne add2
    mov bh,ah
    tablaNumero bh
    jmp fin 


add3:
    mov al,dl
    mov cl,10
    div cl
    mov bl,al
    mov dh,ah
    mov dl,0
    push dx
    push bx
    
    cmp bh,9
    jg partir 
    tablaNumero bh 
contiTabla:
    call limpiar
    pop bx         
    tablaNumero bl     
    call limpiar
    pop dx 
    tablaNumero dh
    jmp fin 
    
partir:
     call limpiar
     pop bx
     push bx
     mov al,bh
     mov cl,10
     div cl
     push ax
     tablaNumero al
     call limpiar  
     pop bx   
     tablaNumero bh
     jmp contiTabla

    
add2:

    mov bl,ah
    push bx
    
    tablaNumero bh
    call limpiar
    pop bx
    tablaNumero bl
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
    




