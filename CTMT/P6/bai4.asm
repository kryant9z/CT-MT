.model small
.stack 100h

.data
 dem db ?
.code 
mov ax,@data
mov ds,ax  

mov bx,1100110011001100b 
mov cx,16
l1: 
rol bx,1
jc dembit1  

jmp next
dembit1:
inc dem
next:
loop l1
 mov dl,dem

   
    mov ah, 4Ch
    int 21h

end
