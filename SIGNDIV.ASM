.model small
.stack 64h
.data
.code
start:mov ax,@data
        mov ds,ax
        mov al,0dah
        mov ch,03h
        cbw
        idiv ch
        mov ah,4ch
        int 21h
        hlt
        end
