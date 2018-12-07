DATA SEGMENT
    WE DB 'What is your name?',13,10,'$'
    WE1 DB 'Hello','$'
    WE2     db 24
            db 0
            DB 25 DUP('$')
    we3 db 13,10,'$'
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
START:
    MOV AX,DATA
    MOV DS,AX
    MOV DX,OFFSET WE
    MOV AH,9
    INT 21H 
    mov ah,0ah
    lea dx,we2
    int 21h  
    
    mov dx,offset we3
    mov ah,9
    int 21h
   
    
    mov ah,9
    MOV DX,OFFSET WE1 
    MOV AH,9
    INT 21H 
    
    
    lea si,we2[2]
    ;add si,2
    mov ah,9
    mov dx,si
    int 21h
    
    MOV AX,4CH
    INT 21H
CODE ENDS
    END START