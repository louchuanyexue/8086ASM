DATA SEGMENT
    HEX_NUM DB 0,1,2,3,4,5,6,7,8,9,0AH,0BH,0CH,0DH,0EH,0FH
    TABLE DB '0123456789ABCDEF'
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
START:
    MOV AX,DATA
    MOV DS,AX
    MOV CX,16
    MOV BX,OFFSET 