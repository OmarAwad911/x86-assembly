.MODEL SMALL
.STACK 100H


.DATA



.CODE

MAIN PROC
    
    MOV AX,50
    ADD AX,30 
    SUB AX,20
    
    ;MULIPLAY
    
    MOV AL,7
    
    MOV BL,5
    
    MUL BL    ; AX= AL*BL
    
    ; DIVIDE
    
    MOV AX,100
    MOV BL,5
    
    DIV BL       ; AL=AX/BL 
    
    ;(8*9)-12
    
    MOV AL,8
    MOV BL,9
    
    MUL BL  ; AX=8*9=72
    
    SUB AX,12 ; AX = 60=3C
    
    MOV BX,AX
    
    
    

MAIN ENDP
END MAIN