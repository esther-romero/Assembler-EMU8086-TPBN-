
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio1\convertirBinario_macro.asm'

macro mostrarRegistro cad
    
local inicio    

inicio:
    
    mov ah,9
    mov dx,offset cad
    int 21h
    
    mov ax,0
    mov dx,0
    
    pop bx
    push bx
    convertirBinario bh
    mov bx,0
    pop bx
    push bx
    convertirBinario bl 
    
    
endm    