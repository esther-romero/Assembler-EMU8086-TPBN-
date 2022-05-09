include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio2\mostrarDecimal_macro2.asm'

macro diferenciaDias
                     
local inicio restar1 restar2 restar3 conti1 conti2 conti3 fin                    
inicio:
    
    pop  ax
    pop  bx
    push ax
    push bx
    
    shr ax,9
    shr bx,9
    
    cmp al,bl
    jb restar1                
    sub al,bl
    mov cl,al
conti1:    
    pop  ax
    pop  bx
    push ax
    push bx
    
    shl ax,7
    shr ax,12
    
    shl bx,7
    shr bx,12 
    
    cmp bl,al
    jb  restar2
    sub bl,al
    mov ch,bl
    
conti2:
        
    pop  ax
    pop  bx
    
    shl ax,12 
    shr ax,12
    
    shl bx,12 
    shr bx,12 
    
    cmp al,bl
    jb restar3
    sub al,bl
    
    mostrarDecimal2 al
conti3:    
    mov dl,'/'
    int 21h
    
    mostrarDecimal2 ch    
    
    mov dl,'/'
    int 21h
            
    mostrarDecimal2 cl
    jmp fin
    
restar1:
    sub bl,al
    mov cl,bl
    jmp conti1     

restar2:
    sub al,bl
    mov ch,al
    jmp conti2
restar3:
    sub bl,al 
    
    mostrarDecimal2 bl 
    jmp conti3   
    
fin:
    mov ah,4          

endm
