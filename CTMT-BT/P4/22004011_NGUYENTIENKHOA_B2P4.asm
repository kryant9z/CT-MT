.MODEL SMALL
.STACK 200H
.DATA
    KT DB ?
    TB1 DB 10,13, "NHAP KI TU: $" 
    TB2 DB 10,13, 'KI TU LA: $'

.CODE

BEGIN:
  
  MOV AX,@DATA
  MOV DS,AX
  
  
  NHAP:
  LEA DX,TB1
  MOV AH,9
  INT 21H
  
  MOV AH,1
  INT 21H
  MOV KT,AL
   
  CMP KT,13
  JE thoat
 
  
  CMP KT,'Z'
  JA UP
  JMP XUAT
  
  
  UP:
  SUB KT,32
  JMP XUAT
  
  XUAT: 
  LEA DX,TB2
  MOV AH,9
  INT 21H
  
  MOV AH,2 
  MOV DL,KT
  INT 21H
   
  JMP NHAP
  thoat:
  mov ax,4c00h
  int 21h


END BEGIN