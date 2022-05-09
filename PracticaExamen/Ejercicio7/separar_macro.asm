
macro separar rx,rp,cad,adn

local esEspecial contiVeri aumentar fin;

esEspecial:
    mov cx,499
    mov si,offset cad
    push rx
    cmp rp,0
    jne aumentar
contiVeri:
    add al,adn
    mov [si],al
    pop rx
    add rp,1
    jmp fin
    
aumentar:
    cmp rp,0
    je  contiVeri
    inc si
    sub rp,1
    jmp aumentar
    
fin:
    mov ah,1
endm 