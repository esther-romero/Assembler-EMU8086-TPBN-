;12.- Realizar un programa que capture la información de una
;factura, nit, nro factura, nro autorización, nombre cliente,
;monto y fecha. Se debe generar el código de control de 
;factura que tendrá 3 componentes. El primer componente sera
;el promedio de las letras del nombre del cliente, el 
;segundo componente será la sumatoria de los dígitos de la 
;fecha, y el tercer componente los dos primeros dígitos del
;nit.

      
    ;nit              messirve
    ;Nro factura
    ;Nro autorizacion
    ;nombre           messirve
    ;monto
    ;fecha            messirve
    
    
    ;promedio de las letras del nombre
    ;suma digitos fecha
    ;nit dos primero digitos

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio12\ingresoDatosFactura_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio12\mostrarDecimal_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio12\ingresarNombre_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio12\ingresarFecha_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio12\ingresarNit_macro.asm'


org 100h
inicio:

    ingresoDatosFactura1 
    call saltoLimpia
    ingresarNombre
    call saltoLimpia
    ingresarFecha
    call saltoLimpia
    ingresarNit      
    call saltoLimpia    
    
    pop dx 
    pop bx 
    pop cx 
    
    push dx
    push bx
    
    mostrarDecimal cl
    mov bx,0
    pop bx
    mostrarDecimal bl
    mov bx,0
    pop bx
    mov ah,2
    mov dl,bh
    int 21h
    mov ah,2
    mov dl,bl
    int 21h
    

fin: int 20h 
             
proc saltoLimpia

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ax,0
    mov bx,0
    mov cx,0 
    mov dx,0
    
    ret
        
saltoLimpia endp             

