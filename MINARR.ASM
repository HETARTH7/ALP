.model small
.stack 64H
.data
List DB 01h, 02h, 04h, 03h, 06h
Count EQU 05h
.code
start:  mov ax, @data
        mov ds, ax;
        mov cl, Count - 1
        lea si, List
        mov al, [si]; for 1st element
        inc si
next:   mov bl, [si]
        cmp bl, al
        jg repeat
        mov al, bl
repeat: inc si
        loop next
        hlt
end