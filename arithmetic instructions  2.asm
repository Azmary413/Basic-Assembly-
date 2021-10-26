;Write a assembly language code to accomplish the following task (use as many as possible arithmetic instructions with less number of registers): 
;0Bh * (200 - 225) + 127

ORG 0100H

.DATA                 ;data section
OUTPUT DW ?

.CODE    
MAIN PROC             ;main procedure
    MOV AX, 0Bh       ;assigning 0Bh to AX register
                      
    MOV BX, 200       ;assigning 200 to BX register
    SUB BX, 225
    
    MUL BX            ;Multiply BX with AX
    
    ADD AX, 127       ;sum 127 with AX register values
    
    MOV OUTPUT, AX    ;define output from AX register to Output
    MAIN ENDP         ;end procedure
END MAIN
RET                   