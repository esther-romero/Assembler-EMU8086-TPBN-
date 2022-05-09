;8.- Realizar un programa que solo permita el ingreso de N 
;numeros hexadecimales de dos digitos cada uno. Mostrar cada 
;numero en las demas bases (decimal, octal y binario) si es 
;que el numero es par o primo.

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio8\ingresarNumeroLetra_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio8\salto_enter_macro.asm'  
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio8\mostrarDecimal_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio8\mostrarOctal_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio8\convertirBinario_macro.asm'

org 100h
    
inicio:

    ingresarNumeroLetra 16
    cmp dh,3
    je mostrar
    ingresarNumeroLetra 01
    ;add cl,1
    salto_enter
    jmp inicio 
    
    
mostrar:
    salto_enter
    call limpiar 
    pop bx
    cmp bh,0
    je finMain
    
    mov ah,9
    mov dx,offset decimal
    int 21h
    
    push bx
    mostrarDecimal bh
    salto_enter
    
    mov ah,9
    mov dx,offset octal
    int 21h
    
    pop bx
    push bx
    mostrarOctal bh
    salto_enter
    
    mov ah,9
    mov dx,offset binario
    int 21h
    
    pop bx
    convertirBinario bh
    salto_enter  
    jmp mostrar
    
    
    

finMain: int 20h 

proc limpiar
    mov ax,0
    mov bx,0
    mov cx,0
    mov dx,0         
    ret            
limpiar endp

decimal db 'Numero Decimal: $'
octal   db 'Numero Octal   : $'
binario db 'Numero Binario: $'
espacio db '------------------'