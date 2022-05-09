
macro mensaje cad1,ope,cad2 
    
    
    salto_enter
    salto_enter
    mov ah,9
    mov dx,offset cad1
    int 21h
    salto_enter
    mov dx,offset ope
    int 21h
    salto_enter
    mov dx,offset cad2
    int 21h  
    salto_enter    
    
endm