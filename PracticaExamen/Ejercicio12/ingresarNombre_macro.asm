macro ingresarNombre 
    
local inicio ciclo sumar suma divi fin    

inicio:
    mov ah,9
    mov dx,offset cadN
    int 21h
    mov ax,0
    mov dx,0
    mov bx,0
    mov cx,0
ciclo:    
    mov ah,1
    int 21h
    cmp al,13
    je sumar
    mov ah,0
    push ax
    add cl,1
    jmp ciclo 
    
sumar:
    mov ax,0
    mov bx,0
    mov ch,cl
    
suma:
    cmp ch,0
    je divi
    pop ax
    add bx,ax
    mov ax,0
    sub ch,1
    jmp suma
    
divi:
    mov ax,0
    mov ax,bx
    div cx 
    mov bx,0
    mov bl,al
    push bx
    jmp fin
    
   
cadN db 'Ingrese nombre: $'
    
fin: 
    mov ah,1
endm    
    
    
    

