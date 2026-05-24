.MODEL SMALL
.STACK 100H


.DATA



.CODE
MAIN PROC 
    
    MOV AH,01H
    
    INT 21H
    
    SUB AL,'0'
    
    MOV BL,2
    
    MUL BL
    
    ADD AL,'0'
    
    MOV DL,AL
    MOV AH,02H
    
    INT 21H
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
MAIN ENDP
END MAIN

