;3.- Realizar un programa que solo permita el ingreso 
;de numeros (N) de hasta dos digitos cada uno. 
;Mostrar todos los primos, el promedio de todos 
;y la media de todos.

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio3\ingresarNumeros_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio3\mostrarDecimal_macro.asm'

org 100h
    mov al,255
    push ax
    ingresarNumeros 
    
movimientos:
    mov dx,0
    push dx
    mov ah,9
    mov dx,offset cadP
    int 21h
    mov ax,0
    mov bx,0
    mov cx,0
    mov dx,0
    
    
ciclo:
    mov bx,0
    mov dx,0
    pop dx
    pop bx
    
    cmp bl,255
    je  promedio 
    add dl,1
    push dx
    add cx,bx
    cmp bl,1
    jng  ciclo
    
    
    
    
    mov ax,0
    mov al,bl
    mov dl,2
    div dl
    cmp ah,0
    je ciclo
    cmp bl,3
    je mostrar
    mov ax,0
    mov al,bl
    mov dl,3
    div dl
    cmp ah,0
    je ciclo    
    cmp bl,5
    je mostrar
    mov ax,0
    mov al,bl
    mov dl,5
    div dl
    cmp ah,0
    je ciclo
    cmp bl,7
    je mostrar    
    mov ax,0
    mov al,bl
    mov dl,7
    div dl
    cmp ah,0
    je ciclo
    cmp bl,11
    je mostrar
    mov ax,0
    mov al,bl
    mov dl,11
    div dl
    cmp ah,0
    je ciclo
    cmp bl,13
    je mostrar    
    mov ax,0
    mov al,bl
    mov dl,13
    div dl
    cmp ah,0
    jne mostrar
    jmp ciclo
mostrar:
    mov ax,0
    mov dx,0
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    push cx
    mostrarDecimal bl 
    pop cx
    jmp ciclo
    

promedio:
    mov bx,0
    mov bx,dx
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    mov ah,9
    mov dx,offset cadM
    int 21h
    
    mov ax,0
    mov ax,cx
    mov cx,0
    mov dx,0
    div bx
    mov bx,0
    mov bx,ax
    mov ax,0
    mov cx,0
    mov dx,0
    mostrarDecimal bl

fin: int 20h 

cadP db 'Numeros primos: $'
cadM db 'Promedio/Media: $'    