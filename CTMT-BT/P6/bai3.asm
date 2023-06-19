.model small
.stack 200h
.data 

.code
begin:
mov ax,@data
mov ds,ax

mov dh,8ch
mov cl,3
shl dl,cl

int 21h

end begin
