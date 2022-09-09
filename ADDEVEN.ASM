.model small
.stack 64h
.data
.code
start:mov ax,@data
        mov ds,ax
        mov si,2000h
        mov di,2050h
        mov cl,[si]
        inc si
        mov ch,00h
        mov al,00h
next:mov bl,[si]
        mov dl,01h
        test bl,dl
        jnz xyz
        add al,bl
        daa
xyz:inc si
        loop next
        mov [di],al
        mov ah,4ch
        int 21h
        hlt
        end

