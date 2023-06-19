.MODEL SMALL
.STACK 200H
.DATA
    so1 dw ?
    so2 dw ?
    tb db 10,13, "So lon nhat la:$"

.CODE
BEGIN:
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV so1,ax
    
    MOV AH,1
    INT 21H
    MOV so2,ax
    
    
    MOV AH,2
    MOV DL,10
    INT 21H
    
    MOV AH,2
    MOV DL,13
    INT 21H
    
    MOV AX,so1
    MOV BX,so2
    
    MOV AH,9
    LEA DX,tb
    INT 21h
    
    CMP AX,BX
    JA Inso1
    JB Inso2

Inso1:
    MOV AH,2
    MOV DX,AX
    INT 21H
    MOV CX,AX
    
    
Inso2:
    MOV AH,2
    MOV DX,BX
    INT 21H
    MOV CX,BX
    
      
   
      
    MOV AX, 4C00H
    INT 21H
END BEGIN 