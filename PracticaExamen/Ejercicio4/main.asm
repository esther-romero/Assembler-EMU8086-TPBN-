;Ejercicio 4:

;Realizar un programa que solo permita el ingreso 
;de 3 numeros de hasta 3 dígitos cada uno. 
;Sumar el medio y el menor y mostrar la tabla de 
;suma de cada digito del resultado. Restar el mayor
;y menor y mostrar la tabla de multiplicacion 
;del primer y ultimo digito de del resultado.

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio4\ingresar3Numeros3Digitos.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio4\salto_enter_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio4\tablaDeSuma_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio4\mensaje_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio4\tablaDeMulti_macro.asm'


org 100h

inicio:
    
    
    ingresarNumero 0,ingresar1
    salto_enter
    ingresarNumero 1,ingresar2
    salto_enter
    ingresarNumero 2,ingresar3
    
    call clean
    
    pop ax
    pop bx
    pop cx
    
    cmp ax,bx
    ja mayor
    xchg ax,bx
mayor:
    cmp ax,cx
    ja mayor2
    xchg ax,cx
mayor2:
    cmp bx,cx
    ja operar
    xchg bx,cx
operar:
    add bx,cx
    push ax
    push cx
    push bx 
    
    mensaje espa1,suma,espa2
    
    tablaSuma 
    
    mensaje espa1,multi,espa2
    
    tablaMulti                 
    
    
     

fin: int 20h  

proc clean
    mov ax,0
    mov bx,0 
    mov cx,0
    mov dx,0
    ret
clean endp    
 

ingresar1 db 'Ingrese primer  numero: $'
ingresar2 db 'Ingrese segundo numero: $'
ingresar3 db 'Ingrese tercer  numero: $' 
espa1 db '---------------------------------$'
suma  db '         TABLA DE SUMA $'        
multi db '     TABLA DE MULTIPLICACION $'
espa2 db '---------------------------------$'   