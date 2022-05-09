include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio2\mostrarDecimal_macro.asm'

macro mostrarFecha 

local inicio january february march april may june july august september  october november december conti fin finOficial

inicio:
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ax,0
    mov dx,0
    
    pop cx
    push cx
    shl cx,12 
    shr cx,12
    
    mostrarDecimal cl
    
    mov ah,2
    mov dl,'/'
    int 21h
    
    pop cx
    push cx
    shl cx,7
    shr cx,12    
    mov bl,cl
    cmp bl,1
    je january
    cmp bl,2
    je february
    cmp bl,3
    je march
    cmp bl,4
    je april
    cmp bl,5
    je may
    cmp bl,6
    je june 
    cmp bl,7
    je july
    cmp bl,8
    je august
    cmp bl,9
    je september 
    cmp bl,10
    je october
    cmp bl,11
    je november
    jmp december
    
january:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1enero
    int 21h
    
    jmp conti
february: 
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1febrero
    int 21h
    
    jmp conti
march:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1marzo
    int 21h
    
    jmp conti
april:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1abril
    int 21h
    
    jmp conti
may:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1mayo
    int 21h
    
    jmp conti
june:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1junio
    int 21h
    
    jmp conti
july:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1julio
    int 21h
    
    jmp conti
august:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1agosto
    int 21h
    
    jmp conti
september:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1septiembre
    int 21h
    
    jmp conti
october:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1octubre
    int 21h
    
    jmp conti
november:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1noviembre
    int 21h
    
    jmp conti
december:
    mov ax,0
    mov dx,0

    mov ah,9
    mov dx,offset 1diciembre
    int 21h
    
    jmp conti 
    
conti: 
    
    mov ah,2
    mov dl,'/'
    int 21h
    
    pop cx   
    shr cx,9
    
    mostrarDecimal cl
    jmp fin
    
  

1enero db 'enero$'
1febrero db 'febrero$'
1marzo db 'marzo$'
1abril db 'abril$'
1mayo db 'junio$'
1junio db 'junio$'
1julio db 'julio$'
1agosto db 'agosto$'
1septiembre db 'septiembre$'
1octubre db 'octubre$'
1noviembre db 'noviembre$'
1diciembre db 'diciembre$'

fin:
    mov ax,0
    pop ax
    cmp al,2
    je finOficial
    push ax
    jmp inicio
    
finOficial:
    mov ah,2 
endm  

