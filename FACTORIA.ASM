.model small
.stack 64h
.data
A DB 03H
.code
start:mov ax,@data
        mov ds,ax
        lea si,A
        mov bl,[si]
        mov al,01h
repeat:mul bl
        dec bl
        cmp bl,00h
        jnz repeat
        mov ah,4ch
        int 21h
        hlt
        end
