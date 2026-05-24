.MODEL SMALL
.STACK 100H

.DATA 

    arr DB 10, 20, 30, 40, 50   ; 5 bytes
    
    n   EQU 5
   
  




.CODE
MAIN PROC  
    
    MOV AX, @DATA
    
    MOV DS, AX
    
    LEA SI,arr
    
    MOV CX,n
    
    XOR AX,AX
    
    LOOP_START:
    
    MOV BL,[SI]
    
    XOR BH,BH
    
    ADD AX,BX
    
    INC SI 
    
    LOOP LOOP_START
    
    
    
MAIN ENDP
END MAIN