
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio9\verPrimeroL_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio9\mostrarCadena_macro.asm'

macro cadenaPorParte cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10 
    
local saltoB saltoC saltoD saltoE saltoF saltoG saltoH saltoI saltoJ saltoK saltoL saltoM saltoN saltoO
local saltoP saltoQ saltoR saltoS saltoT saltoU saltoV saltoW saltoX saltoY saltoZ fin

    call salto
    mov bx,0    
    verPrimeroL 'a',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoB
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoB:    
    call salto
    mov bx,0    
    verPrimeroL 'b',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoC
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoC:
    call salto
    mov bx,0    
    verPrimeroL 'c',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoD
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoD:
    call salto
    mov bx,0    
    verPrimeroL 'd',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoE
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoE:
    call salto
    mov bx,0    
    verPrimeroL 'e',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoF
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoF:
    call salto
    mov bx,0    
    verPrimeroL 'f',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoG
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoG:
    call salto
    mov bx,0    
    verPrimeroL 'g',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoH
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoH:
    call salto
    mov bx,0    
    verPrimeroL 'h',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoI
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoI:
    call salto
    mov bx,0    
    verPrimeroL 'i',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoJ
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoJ:
    call salto
    mov bx,0    
    verPrimeroL 'j',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoK
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoK:
    call salto
    mov bx,0    
    verPrimeroL 'k',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10
    cmp bl,1
    jb saltoL
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoL:
    call salto
    mov bx,0    
    verPrimeroL 'l',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoM
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoM:
    call salto
    mov bx,0    
    verPrimeroL 'm',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoN
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoN:
    call salto
    mov bx,0    
    verPrimeroL 'n',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoO
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoO:
    call salto
    mov bx,0    
    verPrimeroL 'o',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoP
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoP:
    call salto
    mov bx,0    
    verPrimeroL 'p',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoQ
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoQ:
    call salto
    mov bx,0    
    verPrimeroL 'q',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoR
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoR:
    call salto
    mov bx,0    
    verPrimeroL 'r',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoS
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoS:
    call salto
    mov bx,0    
    verPrimeroL 's',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoT
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoT:
    call salto
    mov bx,0    
    verPrimeroL 't',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoU
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoU:
    call salto
    mov bx,0    
    verPrimeroL 'u',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoV
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoV:
    call salto
    mov bx,0    
    verPrimeroL 'v',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoW
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoW:
    call salto
    mov bx,0    
    verPrimeroL 'w',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoX
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoX:
    call salto
    mov bx,0    
    verPrimeroL 'x',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoY
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoY:
    call salto
    mov bx,0    
    verPrimeroL 'y',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb saltoZ
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
saltoZ:
    call salto
    mov bx,0    
    verPrimeroL 'z',cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10 
    cmp bl,1
    jb fin
    mostrarCadena cadP1,cadP2,cadP3,cadP4,cadP5,cadP6,cadP7,cadP8,cadP9,cadP10,mar1,mar2,mar3,mar4,mar5,mar6,mar7,mar8,mar9,mar10
    jmp fin
                                 
proc salto
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    ret
salto endp

    
fin: 
    mov ah,1
endm 