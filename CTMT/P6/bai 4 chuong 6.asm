
.MODEL SMALL
.STACK 200H
.DATA 
  TB1 DB  "NHAP KI TU : $"
  TB2 DB 13,10, "GIA TRI DAO NGUOC LA : $"
  row db 13,10

    
.CODE
 BEGIN:
 
 MOV AX,@DATA
 MOV DS,AX
 

 MOV AH,9
 LEA DX,TB1
 INT 21H
 MOV CX,0
 NHAPKT:
    MOV AH,1
    INT 21H 
    cmp al,13
    je  in_dao
    
    MOV AH,0
    PUSH AX 
    INC CX
    cmp al, 13 
    JNE NHAPKT

in_dao:  
   lea dx, tb2
   mov ah,9
   int 21h


    INKT:
    POP DX
    MOV AH,2
    INT 21H
    
 LOOP INKT  
 
   
 
 THOAT:
 MOV AX, 4C00H
 INT 21H
 
 
 END BEGIN