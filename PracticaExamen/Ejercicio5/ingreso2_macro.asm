macro ingresoN2 cad
    
local multi suma resta restar divi fin

      mov ah,9
      mov dx,offset cad
      int 21h
      
      mov ah,1
      int 21h
      mov ch,al
      cmp ch,42
      je  multi
      cmp ch,43
      je  suma
      cmp ch,45
      je  resta
      jmp divi
      
multi:
      mov ax,0
      mov al,bl
      mul bh
      mov bl,al
      jmp fin 
suma: 
      add bl,bh
      jmp fin
resta:
      cmp bl,bh
      jg restar
      xchg bl,bh
restar:      
      sub bl,bh
      jmp fin
divi:          
      mov ax,0
      mov al,bl
      div bh
      mov bl,al
      jmp fin
      
fin:
      mov ah,4
endm      