include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio12\salto_enter_macro.asm'      

macro ingresoDatosFactura1 
       
local mensajeFactura cicloFac 
local mensajeAutori cicloAut 
local mensajeMonto cicloMon mensajeFecha fin
       
mensajeFactura:
    mov ah,9
    mov dx,offset cadFac
    int 21h    
    
cicloFac:
    mov ah,1
    int 21h
    cmp al,13
    je mensajeAutori
    jmp cicloFac    
    
mensajeAutori:
    salto_enter
    mov ah,9
    mov dx,offset cadAut
    int 21h
    
cicloAut:
    mov ah,1
    int 21h
    cmp al,13
    je mensajeMonto
    jmp cicloAut
    
mensajeMonto:
    
    salto_enter
    mov ah,9
    mov dx,offset cadMonto
    int 21h    
    
cicloMon:
    mov ah,1
    int 21h
    cmp al,13
    je  fin
    jmp cicloMon



cadFac db 'Ingrese Nro de Factura: $'
cadAut db 'Ingrese Nro de Autorizacion: $'
cadMonto db 'Ingrese monto: $'


fin:
    mov ah,1
endm

