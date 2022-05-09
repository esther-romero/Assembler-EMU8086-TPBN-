;5.- Realizar un programa que muestre un menu 
;1) Ingreso de numeros, 
;2) ingreso de Operación, 
;3) Seleccion de Sistema numerico (b, d, o, h), 
;4) Mostrar resultado en el sistema numérico seleccionado.

include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio5\salto_enter_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio5\ingreso1_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio5\ingreso2_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio5\mostrarDecimal_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio5\convertirBinario_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio5\mostrarOctal_macro.asm'
include 'C:\Users\EstherRomero\Documents\EstherArchivosUni\INGENIERIA INFORMATICA\Semestre V\TPBN\PracticaExamen\Ejercicio5\mostrarHexadecimal_macro.asm'

org 100h

inicio:
      
      ingresoN1 ingreso1
                
      ingresoN2 ingreso2
      
selectSis:
      salto_enter
      mov ah,9
      mov dx,offset ingreso3
      int 21h
      
      mov ah,1
      int 21h
      push ax
      
      salto_enter
      mov ah,9
      mov dx,offset ingreso4
      int 21h  
      
      mov ax,0
      pop ax
      cmp al,98
      je  binario
      
      cmp al,100
      je  decimal
      
      cmp al,104
      je  hexadecimal
      jmp octal
      
binario: 
      convertirBinario bl      
      jmp fin
decimal:
      mostrarDecimal bl
      jmp fin
hexadecimal:
      mostrarHexadecimal bl
      jmp fin
octal:      
      mostrarOctal bl

fin: int 20h 

ingreso1 db '1) Ingreso de Numero   : $'
ingreso2 db '2) Ingreso de Operacion: $'
ingreso3 db '3) Seleccione el sistema Numerico (b,d,o,h): $'
ingreso4 db '4) Resultado: $'