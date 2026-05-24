.MODEL SMALL
.STACK 100H

.DATA 
    arr DB 4,8,2,6,9

    n   EQU 5 
     

.CODE

; Bubbale Sort 

MAIN PROC 
    
    MOV AX,@DATA
    
    MOV DS,AX 
    
    MOV CX,n
    
    DEC CX

    OUT_LOOP:
    
      PUSH CX
    
      LEA SI,arr
    
      MOV BX,CX

    IN_LOOP:
    
      MOV AL,[SI]
    
      MOV AH,[SI+1]
      
      CMP AL,AH
    
      JBE NO_SWAP
    
      MOV [SI],AH
    
      MOV [SI+1],AL

    NO_SWAP:
     
      INC SI
      
      DEC BX
      
      JNZ IN_LOOP
    
      POP CX
      
      LOOP OUT_LOOP

      MOV AH,4CH
    
      INT 21H

MAIN ENDP
END MAIN