.MODEL SMALL
.STACK 200H
.DATA 
    TB1 DB  "-1$"
    TB2 DB 13,10, "1$"
    TB3 DB  '0$'


.CODE

BEGIN:
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AX,3
    CMP AX, 0
    JG LONHON
    JE BANGKHONG
    JL NHOHON
    
    LONHON:
       MOV AH,9
       LEA DX, TB2
       INT 21H
       JMP KETTHUC
       
    BANGKHONG:
       MOV AH,9
       LEA DX, TB3
       INT 21H
       JMP KETTHUC
    NHOHON:
      
       MOV AH,9
       LEA DX, TB1
       INT 21H
       JMP KETTHUC
    KETTHUC:
    MOV AX, 4C00H
    INT 21H
    
END BEGIN