.MODEL SMALL
.DATA
    LIST DW 2579H, 0A500H, 0C009H, 0159H, 0B900H
    COUNT EQU 05H 
.CODE 
START: MOV AX, @DATA
        MOV DX, AX
        XOR BX, BX
        XOR DX, DX
        MOV CL, COUNT
        MOV SI, OFFSET LIST
AGAIN:MOV AX, [SI]
        SHL AX, 01
        JC NEGT 
        INC BX
        JMP NEXT
NEGT:INC DX
NEXT:ADD SI, 02
        DEC CL
        JNZ AGAIN
        MOV AH, 4CH
        INT 21H
END
