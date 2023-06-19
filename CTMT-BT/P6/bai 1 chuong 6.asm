.model small
.stack 200h
.data
tb1 db ' Gia tri nguoc lai cua chuoi la: $'
.code
    mov ax,@data
    mov ds,ax
    mov cx,10
 nhapkt:   
    mov ah,01h
    int 21h
    mov ah,0
    push ax
 loop nhapkt
    mov cx,10 
    mov ah,09h
    lea dx,tb1
    int 21h
 inkt:
    pop dx
    mov ah,02
    int 21h
 loop inkt           
    mov ax,4c00h
    int 21h
    
end    
