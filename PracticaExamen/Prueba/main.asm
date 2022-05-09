
;9.- Realizar un programa para registrar partes de 
;computadoras (al menos 10) y su marca,
;preguntar si se ordena por parte o marca, 
;mostrar en orden alfabético el resultado.

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio9\ingresaDatosCompu_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio9\salto_enter_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio9\verPrimeroL_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio9\mostrarCadena_macro.asm'

org 100h

    ingresaDatosCompu pc,marca,cadPC1,marPC1         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC2,marPC2                     
    salto_enter                               
    salto_enter
    ingresaDatosCompu pc,marca,cadPC3,marPC3         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC4,marPC4         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC5,marPC5         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC6,marPC6         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC7,marPC7         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC8,marPC8         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC9,marPC9         
    salto_enter
    salto_enter
    ingresaDatosCompu pc,marca,cadPC10,marPC10         
    salto_enter
    
    mov ah,9
    mov dx,offset operar
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'p'
    je ordenarParte
    jmp ordenarMarca
    
ordenarParte:
    salto_enter
    mov bx,0    
    verPrimeroL 'a',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoB
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoB:    
    mov bx,0    
    verPrimeroL 'b',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoC
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoC:
    mov bx,0    
    verPrimeroL 'c',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoD
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoD:
    mov bx,0    
    verPrimeroL 'd',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoE
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoE:
    mov bx,0    
    verPrimeroL 'e',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoF
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoF:
    mov bx,0    
    verPrimeroL 'f',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoG
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoG:
    mov bx,0    
    verPrimeroL 'g',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    cmp bl,1
    jb saltoH
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoH:
    mov bx,0    
    verPrimeroL 'h',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoI
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoI:
    mov bx,0    
    verPrimeroL 'i',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoJ
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoJ:
    mov bx,0    
    verPrimeroL 'j',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoK
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoK:
    mov bx,0    
    verPrimeroL 'k',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    cmp bl,1
    jb saltoL
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoL:
    mov bx,0    
    verPrimeroL 'l',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    cmp bl,1
    jb saltoM
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoM:
    mov bx,0    
    verPrimeroL 'm',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoN
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoN:
    mov bx,0    
    verPrimeroL 'n',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoO
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoO:
    mov bx,0    
    verPrimeroL 'o',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoP
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoP:
    mov bx,0    
    verPrimeroL 'p',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoQ
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoQ:
    mov bx,0    
    verPrimeroL 'q',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoR
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoR:
    mov bx,0    
    verPrimeroL 'r',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoS
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoS:
    mov bx,0    
    verPrimeroL 's',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoT
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoT:
    mov bx,0    
    verPrimeroL 't',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    cmp bl,1
    jb saltoU
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoU:
    mov bx,0    
    verPrimeroL 'u',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoV
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoV:
    mov bx,0    
    verPrimeroL 'v',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoW
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoW:
    mov bx,0    
    verPrimeroL 'w',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    cmp bl,1
    jb saltoX
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoX:
    mov bx,0    
    verPrimeroL 'x',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoY
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoY:
    mov bx,0    
    verPrimeroL 'y',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb saltoZ
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    salto_enter
saltoZ:
    mov bx,0    
    verPrimeroL 'z',cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10 
    cmp bl,1
    jb fin
    mostrarCadena cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10,marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    jmp fin
           
    
ordenarMarca:
    salto_enter
    mov bx,0    
    verPrimeroL 'a',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoBM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoBM:
    mov bx,0    
    verPrimeroL 'b',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoCM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoCM:    
    mov bx,0    
    verPrimeroL 'c',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoDM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoDM:
    mov bx,0    
    verPrimeroL 'd',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoEM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoEM:
    mov bx,0    
    verPrimeroL 'e',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoFM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoFM:
    mov bx,0    
    verPrimeroL 'f',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoGM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoGM:
    mov bx,0    
    verPrimeroL 'g',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    cmp bl,1
    jb saltoHM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoHM:
    mov bx,0    
    verPrimeroL 'h',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoIM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoIM:
    mov bx,0    
    verPrimeroL 'i',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoJM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoJM:
    mov bx,0    
    verPrimeroL 'j',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoKM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoKM:
    mov bx,0    
    verPrimeroL 'k',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    cmp bl,1
    jb saltoLM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoLM:
    mov bx,0    
    verPrimeroL 'l',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    cmp bl,1
    jb saltoMM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoMM:
    mov bx,0    
    verPrimeroL 'm',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoNM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoNM:
    mov bx,0    
    verPrimeroL 'n',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoOM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoOM:
    mov bx,0    
    verPrimeroL 'o',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoPM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoPM:
    mov bx,0    
    verPrimeroL 'p',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoQM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoQM:
    mov bx,0    
    verPrimeroL 'q',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoRM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoRM:
    mov bx,0    
    verPrimeroL 'r',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    cmp bl,1
    jb saltoSM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoSM:
    mov bx,0    
    verPrimeroL 's',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoTM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoTM:
    mov bx,0    
    verPrimeroL 't',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    cmp bl,1
    jb saltoUM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoUM:
    mov bx,0    
    verPrimeroL 'u',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoVM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoVM:
    mov bx,0    
    verPrimeroL 'v',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoWM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoWM:
    mov bx,0    
    verPrimeroL 'w',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10
    cmp bl,1
    jb saltoXM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoXM:
    mov bx,0    
    verPrimeroL 'x',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoYM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoYM:
    mov bx,0    
    verPrimeroL 'y',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb saltoZM
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    salto_enter
saltoZM:
    mov bx,0    
    verPrimeroL 'z',marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10 
    cmp bl,1
    jb fin
    mostrarCadena marPC1,marPC2,marPC3,marPC4,marPC5,marPC6,marPC7,marPC8,marPC9,marPC10,cadPC1,cadPC2,cadPC3,cadPC4,cadPC5,cadPC6,cadPC7,cadPC8,cadPC9,cadPC10
    jmp fin
    
    
fin: int 20h           

pc db 'Ingrese nombre: $'
marca db 'Ingrese marca: $'
operar db 'Ingrese operacion(p/m): $'
cadVacio db ' $'


cadPC1 db 21 dup ('$') 
marPC1 db 11 dup ('$')

cadPC2 db 21 dup ('$') 
marPC2 db 11 dup ('$')

cadPC3 db 21 dup ('$') 
marPC3 db 11 dup ('$')

cadPC4 db 21 dup ('$') 
marPC4 db 11 dup ('$')

cadPC5 db 21 dup ('$') 
marPC5 db 11 dup ('$')

cadPC6 db 21 dup ('$') 
marPC6 db 11 dup ('$')

cadPC7 db 21 dup ('$') 
marPC7 db 11 dup ('$')

cadPC8 db 21 dup ('$') 
marPC8 db 11 dup ('$')

cadPC9 db 21 dup ('$') 
marPC9 db 11 dup ('$')

cadPC10 db 21 dup ('$') 
marPC10 db 11 dup ('$')   