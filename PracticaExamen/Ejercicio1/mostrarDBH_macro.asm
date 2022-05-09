

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio1\convertirBinario_macro2.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio1\mostrarHexadecimal_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio1\limpiaSalta_macro.asm'


macro show cadD, cadM, cadA
    
local inicio    
    
inicio: 
    
    mov ah,9
    mov dx,offset cadD
    int 21h
    mov ax,0
    mov dx,0
            
    pop bx
    push bx
    shl bx,11 
    shr bx,11
    push bx
    
    convertirBinario2 bl
    
    mov ah,2
    mov dl,'/'
    int 21h
    
    pop bx 
    
    mostrarHexadecimal bl 
    
    limpiaSalta
    
    
    mov ah,9
    mov dx,offset cadM
    int 21h
    mov ax,0
    mov dx,0
            
    pop bx
    push bx
    shl bx,7 
    shr bx,12
    push bx
    
    convertirBinario2 bl
    
    mov ah,2
    mov dl,'/'
    int 21h
    
    pop bx 
    
    mostrarHexadecimal bl
    
    limpiaSalta
    
    
    mov ah,9
    mov dx,offset cadA
    int 21h
    mov ax,0
    mov dx,0
            
    pop bx
    push bx  
    shr bx,9
    push bx
    
    convertirBinario2 bl
    
    mov ah,2
    mov dl,'/'
    int 21h
    
    pop bx 
    
    mostrarHexadecimal bl
    
endm         
