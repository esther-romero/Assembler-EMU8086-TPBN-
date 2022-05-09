;2.- Realizar un programa que permita el ingreso de dos 
;fechas, ambas deben tratarse en un registro respectivamente.
;Mostrar ambas fechas (el mes en literal) y además mostrar la 
;diferencia entre ambas fechas, en días, meses y años si 
;correspondiera
                  
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio2\salto_enter_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio2\ingresaFecha_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio2\mostrarFecha_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio2\mostrarDiferencia_macro.asm'

org 100h

inicio:
    ingresaFecha dia
    salto_enter
    call limpiar
    ingresaFecha mes
    salto_enter
    call limpiar
    ingresaFecha anio
    
    pop cx
    pop bx
    pop ax
    
    shl bx,5
    shl cx,9
    or ax,bx
    or ax,cx
    push ax
    
    salto_enter 
    
    ingresaFecha dia
    salto_enter
    call limpiar
    ingresaFecha mes
    salto_enter
    call limpiar
    ingresaFecha anio
    
    pop cx
    pop bx
    pop ax
    
    shl bx,5
    shl cx,9
    or ax,bx
    or ax,cx
    push ax
    
    call limpiar 
    
    
    pop ax 
    pop bx 
    push ax
    push bx
    mov cx,bx
    mov  bl,2
    push bx
    push ax
    push cx 
    
    call limpiar
    salto_enter
    call limpiar
                      
    mostrarFecha
    call limpiar
    salto_enter
    call limpiar
    diferenciaDias
    
     
    
fin: int 20h

proc limpiar
    mov ax,0
    mov bx,0
    mov cx,0
    mov dx,0         
    ret            
limpiar endp


dia      db  'Ingrese dia  : $'
mes      db  'Ingrese mes  : $'
anio     db  'Ingrese anio: $'                      
