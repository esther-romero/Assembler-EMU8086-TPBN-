
macro mostrarCadena p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10

local ciclo ver2 ver3 ver4 ver5 ver6 ver7 ver8 ver9 ver10 fin
local salto1    
ciclo:
    mov cx,0
    pop cx    
    cmp ch,0
    je  fin
    cmp ch,1
    jne ver2
    mov ah,9
    mov dx,offset p1
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c1
    int 21h
    call salto1
ver2:
    cmp ch,2
    jne ver3
    mov ah,9
    mov dx,offset p2
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c2
    int 21h
    call salto1    
ver3:
    cmp ch,3
    jne ver4
    mov ah,9
    mov dx,offset p3
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c3
    int 21h
    call salto1    
ver4:
    cmp ch,4
    jne ver5
    mov ah,9
    mov dx,offset p4
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c4
    int 21h
    call salto1
    
ver5:
    cmp ch,5
    jne ver6
    mov ah,9
    mov dx,offset p5
    int 21h 
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c5
    int 21h 
    call salto1
    
ver6:
    cmp ch,6
    jne ver7
    mov ah,9
    mov dx,offset p6
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c6
    int 21h
    call salto1
    
ver7:
    cmp ch,7
    jne ver8
    mov ah,9
    mov dx,offset p7
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c7
    int 21h
    call salto1
    
ver8:
    cmp ch,8
    jne ver9
    mov ah,9
    mov dx,offset p8
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c8
    int 21h
    call salto1
    
ver9:
    cmp ch,9
    jne ver10
    mov ah,9
    mov dx,offset p9
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c9
    int 21h
    call salto1
    
ver10:
    cmp ch,10
    jne ciclo
    mov ah,9
    mov dx,offset p10
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c10
    int 21h
    call salto1
    jmp ciclo        


proc salto1
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    ret
salto1 endp

fin: 
    mov ah,1
endm                    