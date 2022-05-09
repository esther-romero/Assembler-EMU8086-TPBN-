;11.- Realizar un programa que introducir los datos de personas
;para brindar servicios de fibra Optica en Entel, debe 
;registrar Nombre, Apellidos, Ci, Telefono y Barrio. Verificar 
;el numero ingresado si concuerda con la region telefonica y el
;barrio sea de Cochabamba cercado, si es correcto mostrar el 
;mensaje "Factible" caso contrario mostrar "No Factible".

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio11\ingresarDatos_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio11\salto_enter_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio11\verificarBarrio_macro.asm'


org 100h


    ingresarDatos cadNombre,cadApellido,cadCi,cadTelef,cadBarrio    
        
    cmp ch,5
    jne finalizar
    mov bx,0
    verificarBarrio
    
    cmp bh,4
    jne finalizar
    cmp cl,7
    jne finalizar
    mov bx,0
    
ciclo:    
    pop bx
    cmp bl,0
    jb finalizar
    cmp bl,9
    ja finalizar
    cmp cl,1
    je ver4
    sub cl,1
    jmp ciclo

ver4:
    cmp bl,4
    je correcto
    
finalizar:
    salto_enter
    mov ah,9
    mov dx,offset cadNoFac
    int 21h
    jmp fin
    
correcto: 
    salto_enter   
    mov ah,9
    mov dx,offset cadFac
    int 21h
    jmp fin
    
fin: int 20h 

cadNombre db 'Ingrese Nombre: $'
cadApellido db 'Ingrese Apellido: $'
cadCi db 'Ingrese Ci: $' 
cadTelef db 'Ingrese Telefono: $'
cadBarrio db 'Ingrese Barrio: $'    
cadFac db 'Factible$'
cadNoFac db 'No Factible$'

