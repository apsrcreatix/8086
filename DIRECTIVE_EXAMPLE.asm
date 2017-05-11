DATA SEGMENT :
    N1 DW 0002H  ;data word directive for storing the 1234 hexadecimals 
    N2 DW 0001H  ;same case but with different value and different labels 
    
    DATA ENDS

CODE SEGMENT :   
    
    ASSUME CS : CODE ,DS : DATA 
    START :
    
    MOV AX,DATA 
    MOV DS,AX
    
    
    MOV AX,N1
    MOV BX,N2
    
    MOV AX,BX
    
    CODE ENDS 
ENDS START