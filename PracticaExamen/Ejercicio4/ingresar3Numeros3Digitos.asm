macro ingresarNumero n,cad
    
local  move mover1  mover2  mover3 fin

move: 

    mov ah,9
    mov dx,offset cad
    int 21h
    
    mov ax,0
    mov dx,0
    
    mov ah,1
    int 21h
    cmp al,13
    sub al,30h
    mov bl,al
    
    mov ah,1
    int 21h
    cmp al,13
    je  mover1
    sub al,30h
    mov bh,al
    
    mov ah,1
    int 21h
    cmp al,13
    je  mover2
    sub al,30h
    mov ch,al
    jmp mover3
    
mover1:
    mov bh,0
    push bx
    jmp fin
     
mover2: 
    mov al,bl
    mov ah,0
    mov cl,10
    mul cl
    add al,bh
    push ax 
    jmp fin
    
mover3:           
    mov al,bl
    mov ah,0
    mov cl,100
    mul cl 
    mov dl,bh
    mov bx,ax
    mov al,dl
    mov ah,0
    mov cl,10
    mul cl 
    mov dl,ch
    mov cx,ax
    add bx,cx
    add bx,dx
    mov cx,n
    push bx  
    
fin: 
    mov ah,1
endm    