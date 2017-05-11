
DATA SEGMENT 
    N1 DW 1234H
    N2 DW 1234H
DATA ENDS 
     CODE SEGMENT 
        ASSUME CS : CODE ,DS : DATA    
  
  START:
        MOV AX,DATA 
        MOV DS,AX
                                      
                                      
        MOV AX,N1
        MOV BX,N2
        
          ADD AX,BX      
          SUB AX,BX   
          MUL BX
          DIV BX
          
          CODE ENDS 
      ENDS START