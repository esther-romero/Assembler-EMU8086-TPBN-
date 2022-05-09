
macro limpiaSalta 
     
local salto

salto:   
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
            
    mov ax,0
    mov bx,0
    mov cx,0
    mov dx,0            
    
endm 
        
        

