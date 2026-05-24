
.MODEL SMALL
.STACK 100H


.DATA    




.CODE 

MAIN PROC  
    MOV AX,1234H
    
    ;MOV AH,12H
    
    ;MOV AL,34H
    
    MOV BL, AH
    
    MOV CH,AL

    MOV DH,AH 
    
    
MAIN ENDP

END MAIN 
                                 
;Never do MOV DS, 1234H directly--