.MODEL SMALL
.STACK 200H
.DATA 
     TB1 DB "NHAP KI TU 1 $" 
     MG1 DB 13,10, "KI TU 1 LA $"         
     TB2 DB "NHAP KI TU 2 $"
     MG2 DB 13,10, "KI TU 1 LA $" 
 


.CODE

BEGIN: 
     MOV AX, @DATA
     MOV DS,AX  
              

              LEA DX, TB1
              MOV AH,9
              INT 21H 
              
              MOV AH, 1
              INT 21H
              MOV BL,AL
              
              LEA DX, TB2
              MOV AH, 9
              INT 21H

              MOV AH, 1
              INT 21H
              MOV CL, AL

              LEA DX, MG1
              MOV AH,9
              INT 21H

              SUB BL, 1
              MOV AH, 2
              MOV DL, BL
              INT 21H

              
              LEA DX, MG2
              MOV AH,9
              INT 21H

              
              SUB CL, 1
              MOV AH, 2
              MOV DL, CL
              INT 21H

              

              
     
     

     MOV AX, 4CH
     INT 21H

END BEGIN