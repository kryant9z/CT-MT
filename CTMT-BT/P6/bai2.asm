.model small
.stack 200h
.data 

.code
begin:
mov ax,@data
mov ds,ax

mov al,00110110b
or al,10000000b

int 21h

end begin