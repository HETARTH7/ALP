.model small
.stack 64h
.data
List dw 53h, 02h,15h,52h
count equ 04h
.code
start:mov ax,@data
        mov ds,ax
        mov dx,count-1
again0:mov cx,dx
        lea si,List
again1:mov ax,[si]
        cmp ax,[si+2]
        jnl pr1
        xchg [si+2],ax
        xchg [si],ax
pr1:add si,02h
        loop again1
        dec dx
        jnz again0
        mov ch,21h
        hlt
end
