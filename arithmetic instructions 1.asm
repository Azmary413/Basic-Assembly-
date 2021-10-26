Write a assembly language code to accomplish the following task (use as many as possible arithmetic instructions with less number of registers): 
;(30 + 15) * (575 – 225) + 210

ORG 0100H

.DATA                   ;data section
OUTPUT DW ?

.CODE                   ;code section
MAIN PROC
    XOR AX, AX          ;removing previous values from register
    
    MOV AL, 30          ;taking 30 in AL register
    ADD AX, 15          ;add 15 value in AX register
    
    MOV BX, 575         ;taking 575 in BX register
    SUB BX, 225         ;Now sub 225 from BX register
    MUL BX              ;now multiplying BX with AX register
    
    ADD AX, 210         ;sum 210 with AX register values
    
    MOV OUTPUT, AX      ;Now assigning result from AX register to OUTPUT
    
    MAIN ENDP
END MAIN                ;end program
RET
 