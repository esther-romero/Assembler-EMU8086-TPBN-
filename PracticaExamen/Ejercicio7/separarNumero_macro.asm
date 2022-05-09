
macro separarNumero cadG,cadN
    
local colocarCero veri contiVeri contiVeriN aumentar aumentarN fin

colocarCero:
    mov ax,0
    mov bx,0
    mov cx,0
    mov dx,0

veri:
    mov cx,499    
    mov si,offset cadG
    mov bl,ah
    cmp ah,0
    jne aumentar
contiVeri:
    mov bh,[si]
    cmp bh,'$'
    je fin
    sub bh,30h
    add ah,1
    cmp bh,0
    jb veri
    cmp bh,9
    ja veri
    mov cx,499
    mov si,offset cadN 
    mov bl,al
    cmp bl,0
    jne aumentarN
contiVeriN:
    add bh,30h
    mov [si],bh
    add al,1
    jmp veri

aumentar:
    cmp bl,0
    je  contiVeri
    inc si
    sub bl,1
    jmp aumentar
    
aumentarN:
    cmp bl,0
    je  contiVeriN
    inc si
    sub bl,1
    jmp aumentarN

fin:
    mov ah,1
endm
