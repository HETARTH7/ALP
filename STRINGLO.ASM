data segment
        test_mess db "tis time for a new home"
        db 100 dup()
        new_loc db 23 dup(0)
data ends
code segment
        assume cs:code,ds:data,es:data
start:mov ax,data
        mov ds,ax
        mov es,ax
        lea si,test_mess
        lea di,new_loc
        mov cx,23
        cld
rep movsb
code ends
        end start
