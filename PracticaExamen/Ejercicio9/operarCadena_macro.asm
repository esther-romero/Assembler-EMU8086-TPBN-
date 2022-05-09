
macro operarCadena p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10
    
    
local inicio saltoAdd1 saltoAdd2 saltoAdd3 saltoAdd4
local saltoAdd5 saltoAdd6 saltoAdd7 saltoAdd8
local saltoAdd9  fin salto

inicio:
    mov bx,0
    pop bx
    cmp bl,'*'
    je  fin    
    mov cx,20
    mov si,offset p1
    mov dh,[si]
    cmp dh,bl
    jne saltoAdd1
    mov ah,9
    mov dx,offset p1
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c1
    int 21h
    call salto
saltoAdd1:
    mov cx,20
    mov si,offset p2
    mov dh,[si]
    cmp dh,bl
    jne saltoAdd2
    mov ah,9
    mov dx,offset p2
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c2
    int 21h
    call salto
saltoAdd2:
    mov cx,20
    mov si,offset p3
    mov dh,[si]
    cmp dh,bl
    jne saltoAdd3
    mov ah,9
    mov dx,offset p3
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c3
    int 21h
    call salto
saltoAdd3:
    mov cx,20
    mov si,offset p4
    mov dh,[si]
    cmp dh,bl
    jne saltoAdd4 
    mov ah,9
    mov dx,offset p4
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c4
    int 21h
    call salto
saltoAdd4:
    mov cx,20
    mov si,offset p5
    mov dh,[si]
    cmp dh,bl
    jne saltoAdd5 
    mov ah,9
    mov dx,offset p5
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c5
    int 21h
    call salto
saltoAdd5:
    mov cx,20
    mov si,offset p6
    mov dh,[si]
    cmp dh,bl
    jne saltoAdd6
    mov ah,9
    mov dx,offset p6
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c6
    int 21h
    call salto
saltoAdd6:
    mov cx,20
    mov si,offset p7
    mov dh,[si]
    cmp dh,bl
    jne saltoAdd7
    mov ah,9
    mov dx,offset p7
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c7
    int 21h 
    call salto
saltoAdd7:
    mov cx,20
    mov si,offset p8
    mov dh,[si]
    cmp dh,bl
    jne saltoAdd8
    mov ah,9
    mov dx,offset p8
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c8
    int 21h
    call salto
saltoAdd8:
    mov cx,20
    mov si,offset p9
    mov dh,[si]
    cmp dh,bl
    jne saltoAdd9
    mov ah,9
    mov dx,offset p9
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c9
    int 21h
    call salto
saltoAdd9:
    mov cx,20
    mov si,offset p10
    mov dh,[si]
    cmp dh,bl
    jne inicio
    mov ah,9
    mov dx,offset p10
    int 21h
    mov ah,2
    mov dl,'-'
    int 21h
    mov ah,9
    mov dx,offset c10
    int 21h
    call salto 
    jmp inicio

proc salto
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    ret
salto endp
    
    
fin:
    mov dl,0
endm    
    