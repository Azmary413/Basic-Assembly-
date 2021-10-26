;Write a assembly language code to accomplish the following task (use as many as possible arithmetic instructions with less number of registers): 
;FFFh * 10h + 1111b


ORG 0100H

.DATA                  ;data section
OUTPUT DW ?

.CODE                  ;code section
MAIN PROC              ;main procedure
    XOR AX, AX         ;removing previous values
    MOV AX, 0FFFh      ;putting  value in AX register
    
    MOV BX, 10h        ;take another register named BX and put the value into it
    MUL BX             ;multiplying BX registers value with AX register values
    ADD AX, 1111b      ;sum 1111b with AX register
    
    MOV OUTPUT, AX     ;assignning result from AX register to OUTPUT
     
    MAIN ENDP          ;end procedure
END MAIN               
RET
