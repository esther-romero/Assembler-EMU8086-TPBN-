
macro ingresoN1 cad

local inicio ciclo ingresar    

inicio:
      mov cx,2

ciclo:
      mov ah,9
      mov dx,offset cad
      int 21h
      mov bl,bh
      
ingresar:
      mov ah,7
      int 21h
      sub al,30h
      cmp al,0
      jb ingresar
      cmp al,9
      ja ingresar
      mov bh,al
      mov ah,2
      mov dl,al
      add dl,30h
      int 21h
      salto_enter
      loop ciclo
endm