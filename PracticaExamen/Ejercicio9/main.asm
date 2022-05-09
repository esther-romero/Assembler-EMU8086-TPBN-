
;9.- Realizar un programa para registrar partes de 
;computadoras (al menos 10) y su marca,
;preguntar si se ordena por parte o marca, 
;mostrar en orden alfabético el resultado.

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio9\ingresaDatosCompu_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio9\salto_enter_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio9\operarCadena_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio9\agregarAbecedario_macro.asm'
org 100h

    ingresaDatosCompu pc,marca,cadPC1,marPC1         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC2,marPC2                     
    salto_enter                               
    salto_enter
    ingresaDatosCompu pc,marca,cadPC3,marPC3         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC4,marPC4         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC5,marPC5         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC6,marPC6         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC7,marPC7         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC8,marPC8         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC9,marPC9         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC10,marPC10         
    salto_enter
    
    agregarAbecedario
    
    mov ah,9
    mov dx,offset operar
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'p'
    je ordenarParte
    jmp ordenarMarca
    
ordenarParte:
    salto_enter
    salto_enter
    operarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    jmp fin
ordenarMarca:
    salto_enter
    salto_enter 
    operarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
fin: int 20h           

pc db 'Ingrese nombre: $'
marca db 'Ingrese marca: $'
operar db 'Ingrese operacion(p/m): $'


cadPC1 db 21 dup ('$') 
marPC1 db 11 dup ('$')

cadPC2 db 21 dup ('$') 
marPC2 db 11 dup ('$')

cadPC3 db 21 dup ('$') 
marPC3 db 11 dup ('$')

cadPC4 db 21 dup ('$') 
marPC4 db 11 dup ('$')

cadPC5 db 21 dup ('$') 
marPC5 db 11 dup ('$')

cadPC6 db 21 dup ('$') 
marPC6 db 11 dup ('$')

cadPC7 db 21 dup ('$') 
marPC7 db 11 dup ('$')

cadPC8 db 21 dup ('$') 
marPC8 db 11 dup ('$')

cadPC9 db 21 dup ('$') 
marPC9 db 11 dup ('$')

cadPC10 db 21 dup ('$') 
marPC10 db 11 dup ('$')   