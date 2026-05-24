.MODEL SMALL
.STACK 100H

.DATA

    arr DB 20,80,70,100,25
    
    n = 5




.CODE

MAIN PROC
    
    MOV AX,@DATA
    
    MOV DS,AX
    
    LEA SI,arr
    
    MOV CX,n
    
    MOV BH,AL
    
    L1:
    
    MOV AL,[SI]
    
    CMP AL,BH
    
    JAE SKIP
    
    MOV BH,AL
    
    SKIP:
    INC SI
    
    LOOP L1
    
    
    
    
    
    
    
    
    
MAIN ENDP
END MAIN
    
    
    