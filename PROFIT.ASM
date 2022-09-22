PROFIT EQU 15H
ARRAYS SEGMENT
        COST DB 20H,28H,15H,26H,19H,27H,16H,29H
        PRICES DB 8 DUP(0)
ARRAYS ENDS
CODE SEGMENT
        ASSUME CS:CODE,DS:ARRAYS
        START:MOV AX,ARRAYS
                MOV DS,AX
                MOV CX,0008H
                MOV BX,0000H
        DO_NEXT:MOV AL,COST[BX]
                ADD AL,PROFIT
                DAA
                MOV PRICES[BX],AL
                INC BX
                DEC CX
                JNZ DO_NEXT
        CODE ENDS
                END START
