include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio6\contar_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio6\verLetra_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio6\mostrar_macro.asm'

org 100h

inicio:
    mov cl,'*'
    push cx
    mov cx,500
    mov si,offset cad    

entrada:          
     mov ah,1 
    int 21h
    cmp al,13
    je movimientos
    mov [si],al
    inc si
    loop entrada



movimientos:

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    call limpiar
    
    contar    

    call limpiar
    
    pop ax
    pop bx

ciclo:
    mov  cx,0
    pop  cx
    cmp  cl,'*'
    je   mostrar
    cmp  al,cl
    jne  esMayor
    push cx
    verLetra ah,ch
    cmp  dl,1 
    jne  verMenor
    jmp  ciclo
esMayor:
    cmp  al,cl
    ja   verMenor        
    xchg ax,cx
verMenor:    
    cmp  cl,bl
    jne  esMenor
    push cx
    verLetra ch,bh
    cmp  dl,1
    je   ciclo
    xchg cx,bx
esMenor:     
    cmp  cl,bl
    ja   ciclo        
    xchg cx,bx 
    jmp  ciclo


mostrar:
    
    mostrar ah,bh,masRep,menosRep 

int 20h

cad db 501 dup('$') 
masRep   db 'Mas repeticiones: $'
menosRep db 'Menos repeticiones: $' 

proc limpiar
    
    mov ax,0
    mov bx,0
    mov cx,0
    mov dx,0
            
    ret            
limpiar endp    