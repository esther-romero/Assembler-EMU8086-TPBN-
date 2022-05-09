;7.- Realizar un programa que permita el ingreso de N 
;caracteres, deberán ser guardadas en 4 cadenas finales 
;donde se guarden números, mayúsculas, minúsculas y 
;caracteres especiales. Se debe mostrar las 4 cadenas
;resultantes en columnas de la misma forma que se 
;almaceno.

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio7\separar_macro.asm'

org 100h
    
ciclo: 
    mov ah,1   
    int 21h
    cmp al,13
    je mostrar

esMayuscula:
    cmp al,'A'
    jb esNumero
    cmp al,'Z'
    ja esMinuscula 
    separar dx,dl,cadMayuscula,0h
    jmp ciclo     
esNumero:
    sub al,30h
    cmp al,0
    jb agregar30    
    cmp al,9
    ja agregar30
    separar dx,dh,cadNumero,30h    
    jmp ciclo

agregar30:
    add al,30h
    jmp esEspecial
    
esMinuscula:
    cmp al,'a'
    jb esEspecial    
    cmp al,'z'
    ja esEspecial
    separar bx,bh,cadMinuscula,0h    
    jmp ciclo 
    
esEspecial:
    separar bx,bl,cadEspecial,0h  
    jmp ciclo  
    
mostrar:
    push dx
    mov ax,0
    push ax
    
cicloMostrar:
    call salto    
    mov cx,499
    mov si,offset cadEspecial
    pop  ax
    push ax
    cmp al,0
    jne aumentarE
contiE:
    mov ah,2
    mov dl,[si]
    cmp dl,'$'
    jne espaE
    mov dl,' '
    int 21h
    jmp cont1E
    
espaE:
    int 21h
    sub bl,1
    
    ;---------
cont1E:    
    mov ah,0
    mov ah,9
    mov dx,offset espacio
    int 21h
    ;--------------------
    mov cx,499
    mov si,offset cadMinuscula
    mov ax,0
    pop ax
    push ax
    cmp al,0
    jne aumentarMi
contiMi:
    mov ah,2 
    mov dl,[si]
    cmp dl,'$'
    jne espaMi
    mov dl,' '
    int 21h
    jmp cont1Mi
    
espaMi:
    int 21h
    sub bh,1
    
cont1Mi:    
    mov ah,0
    mov ah,9
    mov dx,offset espacio
    int 21h
    ;--------------------
    mov cx,499
    mov si,offset cadMayuscula
    mov ax,0
    pop ax
    push ax
    cmp al,0
    jne aumentarMa
contiMa:
    mov ah,2 
    mov dl,[si]
    cmp dl,'$'
    jne espaMa
    mov dl,' '
    int 21h
    jmp cont1Ma
    
espaMa:
    int  21h
    mov  dx,0
    mov  ax,0
    pop  ax
    pop  dx
    sub  dl,1
    push dx
    push ax
    
cont1Ma:    
    mov ah,0
    mov ah,9
    mov dx,offset espacio
    int 21h
 
    ;--------------------
    mov cx,499
    mov si,offset cadNumero
    mov ax,0
    pop ax
    push ax
    cmp al,0
    jne aumentarNu
contiNu:
    mov ah,2 
    mov dl,[si]
    cmp dl,'$'
    jne espaNu
    mov dl,' '
    int 21h
    jmp cont1Nu
    
espaNu:
    int  21h
    mov  dx,0
    mov  ax,0
    pop  ax
    pop  dx
    sub  dh,1
    push dx
    push ax
    
cont1Nu:    
    mov ax,0
    pop ax
    add al,1 
    mov dx,0
    pop dx
    push dx
    push ax
    
    
    cmp bl,0
    jne cicloMostrar
    cmp bh,0
    jne cicloMostrar
    cmp dh,0
    jne cicloMostrar
    cmp dl,0
    jne cicloMostrar
    jmp fin
    
aumentarE:
    cmp al,0
    je  contiE
    inc si
    sub al,1
    jmp aumentarE
    
aumentarMi:
    cmp al,0
    je  contiMi
    inc si
    sub al,1
    jmp aumentarMi
    
aumentarMa:
    cmp al,0
    je  contiMa
    inc si
    sub al,1
    jmp aumentarMa

aumentarNu:
    cmp al,0
    je  contiNu
    inc si
    sub al,1
    jmp aumentarNu  
    
    
fin: int 20h

cadMayuscula db 500 dup('$')
cadMinuscula db 500 dup('$')
cadNumero    db 500 dup('$') 
cadEspecial  db 500 dup('$') 
espacio db '     $'

proc salto
    
    push ax
    push dx
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    pop ax
    pop dx
    
    ret

salto endp    