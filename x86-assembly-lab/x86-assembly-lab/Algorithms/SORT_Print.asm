.MODEL SMALL
.STACK 100H

.DATA 
    arr DB 4,8,2,6,9
    
    n   EQU 5 
    
    MSG_1 DB "BEFORE SORTING $" 
    
    MSG_2 DB 0DH,0AH,"After Sorting: $" 

.CODE

MAIN PROC 
    
    MOV AX,@DATA
    
    MOV DS,AX 
    
    LEA DX,MSG_1
    
    MOV AH,09H
    
    INT 21H
    
    CALL PRINT_ARRAY
    
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
      
      LEA DX,MSG_2
       
      MOV AH,09H
       
      INT 21H

      CALL PRINT_ARRAY

      MOV AH,4CH
    
      INT 21H

MAIN ENDP 

PRINT_ARRAY PROC
    
    LEA SI,arr
   
    MOV CX,n

   PRINT_LOOP:
   
    MOV AL,[SI]
    
    ADD AL,30H      
    
    MOV DL,AL
   
    MOV AH,02H
   
    INT 21H
    
    MOV DL,' '      
   
    INT 21H
    
    INC SI
   
    LOOP PRINT_LOOP

    RET

   PRINT_ARRAY ENDP

END MAIN