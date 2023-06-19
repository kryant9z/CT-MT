.MODEL SMALL
.STACK 200H
.DATA
              
.CODE 
    KT DB ?

BEGIN:
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,1
    INT 21H
    MOV KT,AL
    
    CMP KT, 'a'
    JB BTH
    JAE UP
    
    
    UP: 
    SUB KT,20H
    MOV AH,2
    MOV DL,KT
    INT 21H
    JMP KETTHUC 
    
    
    
    BTH:
    MOV AH,2
    MOV DL,KT
    INT 21H
    JMP KETTHUC
    
    
    
  
    
    KETTHUC:
    MOV AX,4CH
    INT 21H
		                                                        




END BEGIN
