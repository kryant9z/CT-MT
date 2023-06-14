.model small
.stack 200h
.data 
    sobit1 db 0
    solanlap db 0                 
.code  
    main proc 
    mov ax, @data
    mov ds, ax 
    mov bx, 1100110011001100b
    mov solanlap, 0
    
    demsobit1:
        rol bx, 1
        inc solanlap
        jc dem 
        mov dl, '0'
        mov ah, 02h
        int 21h
        cmp solanlap, 16
        jne demsobit1
        jmp thoat
    
    
    dem:
        mov dl,'1'
        mov ah, 02h
        int 21h
        cmp solanlap, 16
        jne demsobit1
        
    thoat:
    mov ah, 4ch
    int 21h 
end