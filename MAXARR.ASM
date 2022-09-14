.model small
.stack 64h
.data
array db 53h, 02h,15h,52h
.code
start:MOV CX,04h
        MOV AX,@data
        MOV DS,AX
        LEA SI,array
        MOV AL,[SI]
BACK:INC SI
        CMP AL,[SI]
        JNC NEXT
        MOV AL,[SI]
NEXT:LOOP BACK
HLT
end

