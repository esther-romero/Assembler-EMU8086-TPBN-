
macro verificarBarrio

local verLacma contiM contC contA contL verMAL verMML verMCL verMAL2 verMLL
local verTicti contiTT contCT contIT2 contTT2 verMIT verMTT verMCT verMIT2 verMTT2
local verSarco contiCS contRS contAS contSS verMOS verMCS verMRS verMAS verMSS
local incorrecto correctoBarrio fin

verLacma:
    pop bx
    cmp bl,'a'
    jne verMAL
contiM:
    pop bx
    cmp bl,'m'
    jne verMML
contC:
    pop bx
    cmp bl,'c'
    jne verMCL
contA:    
    pop bx
    cmp bl,'a'
    jne verMAL2
contL:    
    pop bx
    cmp bl,'l'
    jne verMLL
    jmp correctoBarrio
    
verMAL: 
    cmp bl,'A'
    je contiM
    jmp verTicti
verMML:
    cmp bl,'M'
    je contC
    jmp incorrecto
verMCL:    
    cmp bl,'C'
    je contA
    jmp incorrecto
verMAL2:    
    cmp bl,'A'
    je contL
    jmp incorrecto
verMLL:    
    cmp bl,'L'
    je correctoBarrio
    jmp incorrecto
    
;---------------                        
    
verTicti:
    cmp bl,'i'
    jne verMIT
contiTT:
    pop bx
    cmp bl,'t'
    jne verMTT
contCT:
    pop bx
    cmp bl,'c'
    jne verMCT
contIT2:    
    pop bx
    cmp bl,'i'
    jne verMIT2
contTT2:    
    pop bx
    cmp bl,'t'
    jne verMTT2
    jmp correctoBarrio
    
verMIT: 
    cmp bl,'I'
    je contiTT
    jmp verSarco
verMTT:
    cmp bl,'T'
    je contCT
    jmp incorrecto
verMCT:    
    cmp bl,'C'
    je contIT2
    jmp incorrecto
verMIT2:    
    cmp bl,'I'
    je contTT2
    jmp incorrecto
verMTT2:    
    cmp bl,'T'
    je correctoBarrio
    jmp incorrecto
    
;------------      

verSarco:
    cmp bl,'o'
    jne verMOS
contiCS:
    pop bx
    cmp bl,'c'
    jne verMCS
contRS:
    pop bx
    cmp bl,'r'
    jne verMRS
contAS:    
    pop bx
    cmp bl,'a'
    jne verMAS
contSS:    
    pop bx
    cmp bl,'s'
    jne verMSS
    jmp correctoBarrio
    
verMOS: 
    cmp bl,'O'
    je contiCS
    jmp incorrecto
verMCS:
    cmp bl,'C'
    je contRS
    jmp incorrecto
verMRS:    
    cmp bl,'R'
    je contAS
    jmp incorrecto
verMAS:    
    cmp bl,'A'
    je contSS
    jmp incorrecto
verMSS:    
    cmp bl,'S'
    je correctoBarrio
    jmp incorrecto
      
incorrecto:
    mov bx,0
    mov bh,6
    jmp fin
correctoBarrio:
    mov bx,0
    mov bh,4
    jmp fin 
    
fin:
    mov ah,1
endm    
    
        