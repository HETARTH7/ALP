.model small
.stack 64h
.data
array dw 0053h,0002h,0015h,0052h
.code
start:MOV CL,04h
        MOV AX,@data
        MOV DS,AX
        LEA SI,array
        MOV AX,[SI]
BACK:add SI,2
        MOV BX,[SI]
        CMP BX,AX
        jl NEXT
        MOV AX,BX
NEXT:DEC CL
        JNZ BACK
HLT
end
