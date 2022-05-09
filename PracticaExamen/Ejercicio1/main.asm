;1.- Realizar un programa que permita el ingreso de una fecha,
;al concluir el ingreso debera guardarse en un registro, 
;posteriormente mostrar todo el registro y a continuacion en
;lineas diferentes la fecha, el anio, el mes y el dia tanto 
;en binario como en hexadecimal.


; 12/9/22
; 12= 0000000000001100 -> 0000000000001100
;  9= 0000000000001001 -> 0000000100100000
; 22= 0000000000010110 -> 0010110000000000
;                         0010110100101100 
                                           


include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio1\salto_enter_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio1\ingresaFecha_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio1\mostrarRegistro_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio1\mostrarDBH_macro.asm'

org 100h

inicio:
    
    ingresaFecha dia
    salto_enter
    call limpiar
    ingresaFecha mes
    salto_enter
    call limpiar
    ingresaFecha anio
    
    call limpiar
    
    pop cx
    pop bx
    pop ax
    
    shl bx,5
    shl cx,9
    or ax,bx
    or ax,cx
    push ax ;registro de la fecha
    push ax 
    
    call limpiar
    
    salto_enter
    
    call limpiar
    
    mostrarRegistro registro
    
    call limpiar
    
    salto_enter 
    
    show diaBH, mesBH, anioBH
       

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
registro db  'Registro de la fecha (ax): $'
diaBH    db  'Dia Binario/Hexadecimal : $'
mesBH    db  'Mes Binario/Hexadecimal : $'
anioBH   db  'Anio Binario/Hexadecimal: $' 