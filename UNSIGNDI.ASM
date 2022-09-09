.model small
.stack 64h
.data
.code
start:mov ax,@data
        mov ds,ax
        mov ax,37d7h
        mov bh,97h
        div bh
        mov ax,4bh
        int 21h
        hlt
        end
