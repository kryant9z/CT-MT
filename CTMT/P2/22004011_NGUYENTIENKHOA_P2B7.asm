.MODEL SMALL
.STACK 100H

.DATA
    prompt DB 'nhap chu so: $'
    KT DB ?
 
.CODE
    MOV AX, @DATA
    MOV DS, AX


    MOV AH, 1
    INT 21H
    MOV KT,AL


    CMP KT, '4'
    JL LOW
    CMP KT,'6'
    JG HIGH
    JMP KETTHUC
   

LOW:
    MOV AH, 2
    MOV DL, AL
    INT 21H
    JMP KETTHUC

HIGH:
    MOV AH, 2
    MOV DL, AL
    INT 21H

KETTHUC:
    MOV AH, 4CH
    INT 21H
END
