

macro verificarCorreo fail
    
local ciclo continuarGmail verYahoo correcto incorrecto fin
ciclo:    
    mov ax,0
    mov ah,1
    int 21h
    cmp al,13
    je continuarGmail
    mov ah,0 
    push ax
    jmp ciclo
    
    
continuarGmail:
    pop  ax
    cmp  al,'m'
    jne  incorrecto 
    pop  ax
    cmp  al,'o'
    jne  incorrecto
    pop  ax
    cmp  al,'c'
    jne  incorrecto
    pop  ax
    cmp  al,'.'
    jne  incorrecto
    pop  ax
    cmp  al,'l'
    jne  verYahoo 
    pop  ax
    cmp  al,'i'
    jne  incorrecto
    pop  ax
    cmp  al,'a'
    jne  incorrecto 
    pop  ax
    cmp  al,'m'
    jne  incorrecto 
    pop  ax
    cmp  al,'g'
    jne  incorrecto 
    pop  ax
    cmp  al,'@'
    jne  incorrecto 
    jmp  correcto

verYahoo:
    cmp  al,'o'
    jne  incorrecto  
    pop  ax
    cmp  al,'o'
    jne  incorrecto 
    pop  ax
    cmp  al,'h'
    jne  incorrecto
    pop  ax
    cmp  al,'a'
    jne  incorrecto
    pop  ax
    cmp  al,'y'
    jne  incorrecto
    pop  ax
    cmp  al,'@'
    jne  incorrecto
    jmp  correcto

correcto:
    
    mov bh,6 
    jmp fin
    
incorrecto:
    
    mov ah,9
    mov dx,offset fail
    int 21h
    mov bh,4
    jmp fin
    
fin:
    mov dl,1
endm    


