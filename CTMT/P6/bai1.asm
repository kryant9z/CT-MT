.model small
.stack 100h

.data

.code
    mov al, 0F0h 

    and al, 7Fh  

  
    mov ah, 02h
    mov dl, al
    add dl, 30h 
    int 21h

   
    mov ah, 4Ch
    int 21h

end
