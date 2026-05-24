.MODEL SMALL
.STACK 100H



.DATA




.CODE
MAIN PROC 
    
    ;READ TWO DIGIT NUMBERS 
    
    MOV AH,01H
    
    INT 21H
    
    SUB AL,'0'
    
    MOV BL,10
    
    MUL BL
    
    MOV BX,AX
    
    MOV AH,01H
    
    INT 21H
    
    SUB AL ,'0'
    
    XOR AH,AH
    
    ADD AX,BX
    
    
    
    
        
    
    
    
    
MAIN ENDP

END MAIN



