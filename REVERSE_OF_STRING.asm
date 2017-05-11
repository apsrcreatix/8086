DATA SEGMENT 
    X DB "D","A","O"
    Y DB 3 DUP<'$'>
    DATA ENDS 
CODE SEGMENT 
    
    ASSUME CS:CODE DS:DATA
    
    START :
    MOV AX,DATA 
    MOV DS,AX
    MOV CX,03
    LEA SI,X+02
    LEA DI,Y
    
    REVERSE:
    MOV AL,[SI]
    MOV [DI],AL
    DEC SI
    INC DI
    
    LOOP REVERSE
    MOV [DI] , 24H
    LEA DX,Y
    MOV AH,09H
    INT 21H
    
    CODE ENDS 
END START