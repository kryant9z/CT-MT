.MODEL SMALL
.STACK 100H

.DATA
    msg_yes DB 'Yes$'
    msg_no DB 'No$'
    TB1 DB 'Enter a character: $'

.CODE
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    MOV DX, OFFSET TB1
    INT 21H

    MOV AH, 1
    INT 21H

    CMP AL, 'Y'
    JE yes_msg
    CMP AL, 'y'
    JE yes_msg
    
    
    MOV AH, 9
    MOV DX, OFFSET msg_no
    INT 21H
    JMP end_prog

yes_msg:
    MOV AH, 9
    MOV DX, OFFSET msg_yes
    INT 21H

end_prog:
    MOV AH, 4CH
    INT 21H
END
