format PE GUI 4.0
entry inicio

include 'Win32a.inc'

ventana_1	equ		1
salir_btn	equ		1000
derecha	equ		1006
izquierda equ 1007
arriba equ 1005


section '.data' data readable writeable

Ist  dd 0
pWnd dd 0

hdc dd 0
control    RECT 0,0,0,0
controlColor    RECT 0,0,0,0
pantalla   RECT 0,0,868,379
rectangulo RECT 570,210,500,140
circulo    RECT 360,210,290,140
triangulo1 RECT 210,120,640,200
triangulo2 RECT 210,455,640,455

section '.code' code readable executable

inicio:
	invoke GetModuleHandle,0
	mov [Ist],eax
	invoke DialogBoxParam,eax,ventana_1,0,DlgProc,0 
fin:
	invoke ExitProcess,0

proc DlgProc,hWnd,uMsg,wParam,lParam
	push edi esi ebx
	
	mov eax,[uMsg]
	cmp	eax,WM_COMMAND
	je	jCOMMAND
	cmp	eax,WM_INITDIALOG
	je	jINITDIALOG
	cmp	eax,WM_CLOSE
	je	jCLOSE
	xor eax,eax
	jmp finish

jINITDIALOG:
	mov eax,[hWnd]
	mov [pWnd],eax
	
	
	mov eax,1
	jmp finish
	
jCOMMAND:
	mov eax,[wParam]
	cmp	eax,salir_btn
	je	salir
	
	cmp	eax,1002
	je	drawrect
	
	cmp	eax,1003
	je drawtriangulo
	
	cmp	eax,1004
	je drawcirculo
	
	cmp eax,1006
	je moverDerecha
	
	cmp eax,1007
	je moverIzquierda
	
	cmp eax,1005
	je moverArriba
	
	cmp eax,1001
	je moverAbajo
	
	cmp eax,1009
	je cambiaNegro
	
	cmp eax,1008
	je cambiaRojo
	
	xor eax,eax
	jmp finish
	
salir:
	invoke SendMessage,[hWnd],WM_CLOSE,0,0
	mov eax,1
	jmp finish

cambiaNegro:
	stdcall drawpantalla
	cmp [control.left],0
	je negroCircle
	
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke CreateSolidBrush,000h
    invoke FillRect,[hdc],rectangulo,eax 
    
    mov [controlColor.left],2
    mov [controlColor.top],0
    mov [controlColor.right],0
    
    mov eax,1
	jmp finish

negroCircle:
	cmp [control.top],0
	je negroTriangulo
	   
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke Ellipse,[hdc],[ circulo.left],[circulo.top] , [ circulo.right], [ circulo.bottom ]
    stdcall   CambiaColorFondo, 00000FFh, [hdc]  ; BBGGRR
	
	mov [controlColor.left],0
  mov [controlColor.top],2
  mov [controlColor.right],0
	
	mov eax,1
	jmp finish
	
negroTriangulo:
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke CreateSolidBrush,000h
    invoke Pie,[hdc],[triangulo1.left],[triangulo1.top],[triangulo1.right],[triangulo1.bottom],[triangulo2.left],[triangulo2.top],[triangulo2.right],[triangulo2.bottom]
	
	mov [controlColor.left],0
  mov [controlColor.top],0
  mov [controlColor.right],2
	
	mov eax,1
	jmp finish

cambiaRojo:
	stdcall drawpantalla
	cmp [control.left],0
	je rojoCircle
	
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke CreateSolidBrush,0FFh
    invoke FillRect,[hdc],rectangulo,eax 
    
    mov [controlColor.left],1
    mov [controlColor.top],0
    mov [controlColor.right],0
    
    mov eax,1
	jmp finish

rojoCircle:
	cmp [control.top],0
	je rojoTriangulo
	   
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke CreateSolidBrush,0FFh
    invoke Ellipse,[hdc],[ circulo.left],[circulo.top] , [ circulo.right], [ circulo.bottom ]
	
	mov [controlColor.left],0
  mov [controlColor.top],1
  mov [controlColor.right],0
	
	mov eax,1
	jmp finish
	
rojoTriangulo:
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke CreateSolidBrush,0FFh
    invoke Pie,[hdc],[triangulo1.left],[triangulo1.top],[triangulo1.right],[triangulo1.bottom],[triangulo2.left],[triangulo2.top],[triangulo2.right],[triangulo2.bottom]
	
	mov [controlColor.left],0
  mov [controlColor.top],0
  mov [controlColor.right],1
	
	mov eax,1
	jmp finish

moverDerecha:
	stdcall drawpantalla
	cmp [control.left],0
	je dereCircle
	
	add [rectangulo.left],10
	add [rectangulo.right],10
	invoke GetDC,[pWnd]
    mov [hdc],eax
    cmp [controlColor.left],1
  jne contRN
  invoke CreateSolidBrush,0FFh
contRN:
  cmp [controlColor.left],2
  jne contRD
  invoke CreateSolidBrush,000h
contRD: 
    invoke FillRect,[hdc],rectangulo,eax 
    
    mov eax,1
	jmp finish

dereCircle:
    cmp [control.top],0
	je dereTriangulo
	   
    add [circulo.left],10
	add [circulo.right],10
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke Ellipse,[hdc],[ circulo.left],[circulo.top] , [ circulo.right], [ circulo.bottom ]
	
	mov eax,1
	jmp finish

dereTriangulo:
	add [triangulo1.left],10
	add [triangulo2.left],10
	add [triangulo1.right],10
	add [triangulo2.right],10
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke Pie,[hdc],[triangulo1.left],[triangulo1.top],[triangulo1.right],[triangulo1.bottom],[triangulo2.left],[triangulo2.top],[triangulo2.right],[triangulo2.bottom]

	mov eax,1
	jmp finish

moverIzquierda:
	stdcall drawpantalla
	cmp [control.left],0
	je izCircle
	
	add [rectangulo.left],(-10)
	add [rectangulo.right],(-10)
	invoke GetDC,[pWnd]
    mov [hdc],eax
    cmp [controlColor.left],1
  jne contRNI
  invoke CreateSolidBrush,0FFh
contRNI:
  cmp [controlColor.left],2
  jne contRI
  invoke CreateSolidBrush,000h
contRI:
    invoke FillRect,[hdc],rectangulo,eax 
	mov eax,1
	jmp finish
	
izCircle: 
	cmp [control.top],0
	je izTriangulo
	  
    add [circulo.left],(-10)
	add [circulo.right],(-10)
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke Ellipse,[hdc],[ circulo.left],[circulo.top] , [ circulo.right], [ circulo.bottom ]

	mov eax,1
	jmp finish

izTriangulo:
	add [triangulo1.left],(-10)
	add [triangulo2.left],(-10)
	add [triangulo1.right],(-10)
	add [triangulo2.right],(-10)
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke Pie,[hdc],[triangulo1.left],[triangulo1.top],[triangulo1.right],[triangulo1.bottom],[triangulo2.left],[triangulo2.top],[triangulo2.right],[triangulo2.bottom]

	mov eax,1
	jmp finish

moverArriba:
	stdcall drawpantalla
	cmp [control.left],0
	je arCircle
	
	add [rectangulo.top],(-10)
	add [rectangulo.bottom],(-10)
	invoke GetDC,[pWnd]
    mov [hdc],eax
    cmp [controlColor.left],1
  jne contRNA
  invoke CreateSolidBrush,0FFh
contRNA:
  cmp [controlColor.left],2
  jne contRDAb
  invoke CreateSolidBrush,000h
contRDAb:
    invoke FillRect,[hdc],rectangulo,eax 
	
	mov eax,1
	jmp finish
	
arCircle: 
	cmp [control.top],0
	je  arTriangulo
	  
    add [circulo.top],(-10)
	add [circulo.bottom],(-10)
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke Ellipse,[hdc],[ circulo.left],[circulo.top] , [ circulo.right], [ circulo.bottom ]

	mov eax,1
	jmp finish

arTriangulo:
	add [triangulo1.top],(-10)
	add [triangulo2.top],(-10)
	add [triangulo1.bottom],(-10)
	add [triangulo2.bottom],(-10)
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke Pie,[hdc],[triangulo1.left],[triangulo1.top],[triangulo1.right],[triangulo1.bottom],[triangulo2.left],[triangulo2.top],[triangulo2.right],[triangulo2.bottom]

	mov eax,1
	jmp finish


moverAbajo:
	stdcall drawpantalla
	cmp [control.left],0
	je abCircle
	
	add [rectangulo.top],10
	add [rectangulo.bottom],10
	invoke GetDC,[pWnd]
    mov [hdc],eax
    cmp [controlColor.left],1
  jne contRNAA
  invoke CreateSolidBrush,0FFh
contRNAA:
  cmp [controlColor.left],2
  jne contRAA
  invoke CreateSolidBrush,000h
contRAA:
    invoke FillRect,[hdc],rectangulo,eax 
	mov eax,1
	jmp finish
	
abCircle:
	cmp [control.top],0
	je  abTriangulo
	   
    add [circulo.top],10
	add [circulo.bottom],10
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke Ellipse,[hdc],[ circulo.left],[circulo.top] , [ circulo.right], [ circulo.bottom ]

	mov eax,1
	jmp finish


abTriangulo:
	add [triangulo1.top],10
	add [triangulo2.top],10
	add [triangulo1.bottom],10
	add [triangulo2.bottom],10
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke Pie,[hdc],[triangulo1.left],[triangulo1.top],[triangulo1.right],[triangulo1.bottom],[triangulo2.left],[triangulo2.top],[triangulo2.right],[triangulo2.bottom]

	mov eax,1
	jmp finish

drawrect:
  cmp [control.top],0
  jne dibujaR
  cmp [control.right],0
  jne dibujaR
  stdcall drawpantalla

dibujaR:  
  invoke GetDC,[pWnd]
  mov [hdc],eax
  
  cmp [controlColor.left],1
  jne verNegro
  invoke CreateSolidBrush,0FFh
verNegro:
  cmp [controlColor.left],2
  jne contR
  invoke CreateSolidBrush,000h
contR:
  invoke FillRect,[hdc],rectangulo,eax 
  
  mov [control.left],1
  mov [control.top],0
  mov [control.right],0
  
  mov eax,1
  jmp finish

drawcirculo:
  cmp [control.left],0
  jne dibujaC
  cmp [control.right],0
  jne dibujaC
  stdcall drawpantalla
 
dibujaC:  
  invoke GetDC,[pWnd]
  mov [hdc],eax
  cmp [controlColor.top],1
  jne contC
  invoke CreateSolidBrush,0FFh
contC:
  invoke Ellipse,[hdc],[ circulo.left],[circulo.top] , [ circulo.right], [ circulo.bottom ]
  
  mov [control.left],0
  mov [control.top],1
  mov [control.right],0
   
  mov eax,1
  jmp finish

drawtriangulo:
  cmp [control.left],0
  jne dibujaT
  cmp [control.top],0
  jne dibujaT
  stdcall drawpantalla	
dibujaT:

  invoke GetDC,[pWnd]
  mov [hdc],eax
  ;invoke Pie,[hdc],340,160,700,250,  340,505,700,505
  ;invoke Pie,[hdc],220,160,650,250,  220,505,650,505
  
  cmp [controlColor.right],1
  jne contT
  invoke CreateSolidBrush,0FFh
contT:
  
  invoke Pie,[hdc],[triangulo1.left],[triangulo1.top],[triangulo1.right],[triangulo1.bottom],[triangulo2.left],[triangulo2.top],[triangulo2.right],[triangulo2.bottom] 
  mov [control.left],0
  mov [control.top],0
  mov [control.right],1
    
  mov eax,1
  jmp finish
  
jCLOSE:	
	invoke EndDialog,[hWnd],0
	mov eax,1
	
finish:
	pop ebx esi edi
	ret
endp

proc  CambiaColorFondo newColor, uhdc
    ;  Propůsito: Modifica el color de fondo por defecto
    ;  Entrada  : newColor:DWORD, uhdc:DWORD
    ;  Salida   : Ninguna
    ;  Destruye : Ninguna
    ;LOCAL     ulb:LOGBRUSH, uhBrush:DWORD, uhBrushOld:DWORD
    mov       [ulb.lbStyle], BS_SOLID
    mov       eax, [newColor]
    mov       [ulb.lbColor], eax        ; BBGGRR, color
    mov       [ulb.lbHatch], NULL
    invoke    CreateBrushIndirect, ulb
    mov       [uhBrush], eax
    invoke    SelectObject,[uhdc],[uhBrush]     ; Aplicamos el color de fondo
;     mov       [hBrushOld], eax
    ret
endp

proc drawpantalla 
	
	invoke GetDC,[pWnd]
    mov [hdc],eax
    invoke CreateSolidBrush,0AAh
    invoke FillRect,[hdc],pantalla,eax
	
	ret
endp

section '.data' data readable writeable 
  ulb           LOGBRUSH
  uhBrush       rd    1
  hBrushOld     rd    1 

section '.idata' import data readable writeable
  ;otra forma para importar los procedimientos importando archivos INC
  library kernel32,'KERNEL32.DLL',user32,'USER32.DLL',gdi32,'GDI32.DLL'
  include 'api\kernel32.inc'
  include 'api\user32.inc'
  include 'api\gdi32.inc'

section '.rsrc' resource from 'ProyectoFiguras.res' data readable
