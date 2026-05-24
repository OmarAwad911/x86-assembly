.MODEL SMALL
.STACK 100H


.DATA 

    arr DB 4,8,2,6,9
    
    n EQU 5  
    
    FOUNDMSG  DB "FOUND$"
    
    NOTMSG DB "NOT FOUND$"




.CODE

MAIN PROC 
    
    MOV AX,@DATA
    
    MOV DS,AX
    
    LEA SI, arr
    
    MOV CX,n
    
    MOV AL,8
    
    MOV BX,0
    
    SRCH:
    
    CMP AL,[SI]
    
    JE FOUND
    
    INC SI 
    
    INC BX
    
    LOOP SRCH
    
    
    LEA DX,NOTMSG
    
    MOV AH, 09H
    
    INT 21H
    
    JMP DONE

    FOUND:
    
    
    LEA DX, foundMsg
    
    MOV AH, 09H
    
    INT 21H

    DONE:
    
    MOV AH,4CH
    
    INT 21H
    
    
    
    
    
    
    
    
    
    
    
    
MAIN ENDP
END MAIN