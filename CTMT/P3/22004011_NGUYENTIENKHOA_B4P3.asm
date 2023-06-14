.model small
.stack 200h
.data 
    ROW DB 13,10, "$"
   
.code
begin:
mov AX,@DATA
MOV DS,AX 

MOV CX,26
MOV AH,2
MOV DL,"a"
L1:
    INT 21H
    INC DL
    LOOP L1


MOV CX,0
MOV AH,9
LEA DX,ROW
INT 21H


MOV CX,26
MOV AH,2
MOV DL,"A"
L2:
    INT 21H
    INC DL
    LOOP L2 
    
    
MOV CX,0
MOV AH,9
LEA DX,ROW
INT 21H

MOV CX,26
MOV AH,2
MOV DL,"a"
L3:
    INT 21H
    ADD DL,2
    LOOP L3 

MOV CX,0
MOV AH,9
LEA DX,ROW
INT 21H  

    mov cx,26 
    mov ah,2
    mov dl,'a'
    insao:
        mov bl,dl
        int 21h
        sub dl,20h
         mov ah,2
         int 21h
        mov dl,bl
        inc dl
    loop insao   
end begin