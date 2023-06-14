.model small
.stack 200h
.data 

.code
begin:
mov ax,@data
mov ds,ax
mov ax,1010111010010011b
mov bx,ax
mov cx,16
indaybit:
    rol bx,1
    jc inbit1
    mov dl,'0'
    mov ah,2
    int 21h
    jmp next
     inbit1:
      mov dl,'1'
      mov ah,2
      int 21h
     next:
      loop indaybit
mov ah,4ch
int 21h

end begin