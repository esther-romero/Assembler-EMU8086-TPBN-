
macro verPrimeroL v,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10
    
    
local inicio saltoAdd1 saltoAdd2 saltoAdd3 saltoAdd4
local saltoAdd5 saltoAdd6 saltoAdd7 saltoAdd8
local saltoAdd9  fin

inicio:    
    mov cx,20
    mov si,offset p1
    mov dh,[si]
    cmp dh,v
    jne saltoAdd1
    mov ah,1
    push ax
    add bl,1
saltoAdd1:
    mov cx,20
    mov si,offset p2
    mov dh,[si]
    cmp dh,v
    jne saltoAdd2
    mov ah,2
    push ax
    add bl,1
saltoAdd2:
    mov cx,20
    mov si,offset p3
    mov dh,[si]
    cmp dh,v
    jne saltoAdd3
    mov ah,3
    push ax
    add bl,1
saltoAdd3:
    mov cx,20
    mov si,offset p4
    mov dh,[si]
    cmp dh,v
    jne saltoAdd4 
    mov ah,4
    push ax
    add bl,1
saltoAdd4:
    mov cx,20
    mov si,offset p5
    mov dh,[si]
    cmp dh,v
    jne saltoAdd5 
    mov ah,5
    push ax
    add bl,1
saltoAdd5:
    mov cx,20
    mov si,offset p6
    mov dh,[si]
    cmp dh,v
    jne saltoAdd6
    mov ah,6
    push ax
    add bl,1
saltoAdd6:
    mov cx,20
    mov si,offset p7
    mov dh,[si]
    cmp dh,v
    jne saltoAdd7
    mov ah,7
    push ax
    add bl,1
saltoAdd7:
    mov cx,20
    mov si,offset p8
    mov dh,[si]
    cmp dh,v
    jne saltoAdd8
    mov ah,8
    push ax
    add bl,1
saltoAdd8:
    mov cx,20
    mov si,offset p9
    mov dh,[si]
    cmp dh,v
    jne saltoAdd9
    mov ah,9
    push ax
    add bl,1
saltoAdd9:
    mov cx,20
    mov si,offset p10
    mov dh,[si]
    cmp dh,v
    jne fin 
    mov ah,10
    push ax
    add bl,1
    
fin:
    mov dl,0
endm    
    