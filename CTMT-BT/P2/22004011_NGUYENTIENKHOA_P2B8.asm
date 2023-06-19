.MODEL SMALL
.STACK 100H

.DATA
    TB1 DB 'Nhap mot ki tu: $'
    TB2 DB ' in hoa$'
    TB3 DB ' in thuong$'
    TB4 DB 'so$'
    TB5 DB 'Dac biet $'

.CODE
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX,TB1
    INT 21H

    MOV AH, 1
    INT 21H

    CMP AL,'a'
    JB CHECK_INHOA
    CMP AL,'z'
    JBE CHUTHUONG
    
    CHECK_INHOA:
        CMP AL,'A'
        JB CHECK_SO
        CMP AL,'Z'
        JBE CHUHOA
    
    CHECK_SO:
         CMP AL,'0'
         JB DACBIET
         CMP AL,'9'
         JBE SO
    
    
    CHUTHUONG:
        LEA DX,TB3  
        MOV AH,9
        INT 21H
        JMP THOAT
     
     CHUHOA:
        LEA DX,TB2  
        MOV AH,9
        INT 21H
        JMP THOAT
      SO:
        LEA DX,TB4  
        MOV AH,9
        INT 21H 
        JMP THOAT
      DACBIET:
        LEA DX,TB5  
        MOV AH,9
        INT 21H 
        JMP THOAT 
        
THOAT:
    MOV AH, 4CH
    INT 21H
END