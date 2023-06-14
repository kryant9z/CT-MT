.MODEL SMALL
.STACK 200H
.DATA
     a dw 3         
.CODE

BEGIN:
    MOV AX, @DATA
    MOV DS, AX 
    
    MOV AX, a
    CMP AX,0
    JG DUONG
    JL AM
    JE BANGKO
    
    
    
    DUONG:
        MOV a, AX
        JMP KETTHUC
        
    
    AM:
        NEG AX
        MOV a, AX
        JMP KETTHUC 
        
    BANGKO:
        MOV a, AX
        
    
    
    KETTHUC:
    MOV AX, 4CH
    INT 21H

END BEGIN
