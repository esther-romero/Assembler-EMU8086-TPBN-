
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio3\mostrarDecimal_macro.asm'

org 100h
           
    mov bh,29
    
    cmp bh,4
    jb mostrar
    mov ax,0
    mov al,bh
    mov bl,3
    div bl
    cmp ah,0
    je fin
    cmp bh,4
    jb mostrar
    mov ax,0
    mov al,bh
    mov bl,3
    div bl
    cmp ah,0
    je fin    
    cmp bh,6
    jb mostrar
    mov ax,0
    mov al,bh
    mov bl,5
    div bl
    cmp ah,0
    je fin
    cmp bh,8
    jb mostrar    
    mov ax,0
    mov al,bh
    mov bl,7
    div bl
    cmp ah,0
    je fin
    cmp bh,12
    jb mostrar
    mov ax,0
    mov al,bh
    mov bl,11
    div bl
    cmp ah,0
    je fin
    cmp bh,14
    jb mostrar    
    mov ax,0
    mov al,bh
    mov bl,13
    div bl
    cmp ah,0
    je fin
mostrar:
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    mostrarDecimal bh
    
fin: int 20h



