
;10.- Realizar un programa que introducir los datos de una 
;persona para su registro en Android, correo electronico y 
;contraseña, Celular y País. Verificar el correo ingresado 
;sea válido, la contraseña no debe ser visible y en su lugar
;mostrar “*”, la contraseña debe contener al menos una letra 
;en Mayúscula y al menos un Numero. Debe verificarse que el 
;celular sea de Bolivia.

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio10\verificarCorreo_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio10\salto_enter_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio10\verificarContrasenia_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio10\limpiaSalta_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio10\verificarCelular_macro.asm'

org 100h

inicio:
    
    mov ah,9
    mov dx,offset texto
    int 21h 
    
    
ingresar:
    limpiaSalta
    mov ah,9
    mov dx,offset correo
    int 21h
    
    verificarCorreo errorCorreo 
    
    cmp bh,4
    je ingresar
    jmp ingresaContra       
    
ingresaContra:

    limpiaSalta 
    verificarContrasenia contra
    cmp bl,1
    jb  errorC
    cmp bh,1
    jb errorC
    jmp ingresaCelular

errorC:
    limpiaSalta
    mov ah,9
    mov dx,offset errorContra
    int 21h
    jmp ingresaContra
    
ingresaCelular:

    limpiaSalta
    mov ah,9
    mov dx,offset celular
    int 21h
    mov cx,0
    verificarCelular errorCelu
    
    cmp bh,6
    je fin
    jmp ingresaCelular  
    
         

    

fin: int 20h  

                                     
                                     
texto db '------Ingreso de datos------$'
correo db 'Ingrese correo: $' 
errorCorreo db 'Correo invalido, intente nuevamente$'
contra db 'Ingrese contrasenia: $'
errorContra db 'Contrasenia invalida, intente nuevamente$'
errorCelu db 'Celular invalido, intente nuevamente$'
celular db 'Ingrese celular: $'                                                          
                                                          

