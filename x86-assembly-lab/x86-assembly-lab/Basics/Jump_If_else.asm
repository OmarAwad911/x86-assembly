.MODEL SMALL
.STACK 100H



.DATA


.CODE 

MAIN PROC
    
     MOV BX,0
    
     MOV AX, 30
     
     CMP AX, 50
     
     JG EQUAL
     
     NOT_EQUAL:
     
     MOV BX,2
     
     JMP DONE
     
     EQUAL:
     
     MOV BX,1
     
     DONE:
     
  

MAIN ENDP

END MAIN