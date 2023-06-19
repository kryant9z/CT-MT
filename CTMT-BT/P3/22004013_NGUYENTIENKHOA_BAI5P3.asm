.data 
n dw ?
tb1 db 'nhap n: $'
tb2 db 10,13, 'ket qua n! la: $'   
muoi dw 10
.code
    mov ax,@data
    mov ds,ax 
    
    lea dx,tb1
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    sub al,48
    
    mov cx,0
    mov cl,al
    lea dx,tb2
    mov ah,09h
    int 21h
    
    mov ax,1
    mov bx,1
giaithua:
    mul bx
    inc bx
    cmp bx,cx
    jle giaithua
    mov cx,0
lappush:
    xor dx,dx
    div muoi
    add dx,30h
    push dx 
    inc cx
    cmp ax,0
    jne lappush
hienthi:
    pop dx
    mov ah,2
    int 21h
    loop hienthi
    
    mov ah,4ch
    int 21h
end code