
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio12\limpiaSalta_macro.asm'

macro ingresarFecha
    
local inicio ciclo sumar fin    

inicio:    
    limpiaSalta 
    mov ah,9
    mov dx,offset cadFecha
    int 21h
    
    limpiaSalta
    
    mov ah,9
    mov dx,offset cadDia
    int 21h
    
    mov ah,1
    int 21h
    sub al,30h
    mov bl,al
    mov ah,1
    int 21h
    sub al,30h
    mov bh,al
    
    add bl,bh
    push bx
    
    limpiaSalta
    
    mov ah,9
    mov dx,offset cadMes
    int 21h
    
    mov ax,0
    mov dx,0
    mov bx,0
    
    mov ah,1
    int 21h
    sub al,30h
    mov bl,al
    mov ah,1
    int 21h 
    sub al,30h
    mov bh,al
    
    add bl,bh
    mov cx,0
    pop cx
    add bl,cl
    push bx
    ;------- 
    
    limpiaSalta
    mov ah,9
    mov dx,offset cadAnio
    int 21h
    
    mov ax,0
    mov dx,0
    mov bx,0

ciclo:
    cmp dl,4
    je  sumar    
    mov ah,1
    int 21h
    sub al,30h
    add bl,al
    add dl,1
    jmp ciclo 

sumar:
    mov cx,0
    pop cx
    add bl,cl
    push bx 
    jmp fin
    
cadFecha db '---Ingreso de fecha (00/00/0000)---$'
cadDia  db 'Ingrese dia : $'
cadMes  db 'Ingrese mes : $'
cadAnio db 'Ingrese anio: $'


fin:
    mov ah,1
endm