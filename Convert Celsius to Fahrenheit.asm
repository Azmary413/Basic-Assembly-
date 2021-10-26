;Convert 260oC (Celsius) to F (Fahrenheit) using the following expression and store in a variable F: °F = °C x 9/5 + 32 - 1

;°F = °C x 9/5 + 32 - 1
ORG 0100h

.DATA               ;date section
CEL DW 260          ;assigning value 266 into CEL
FER DW ?            ;FER = ? 

.CODE               ;code section
MAIN PROC           ;main procedure
    
    MOV AX, CEL     ;assigning CEL value into AX register
    
    MOV BL, 9       ;puting value into BL register
    XOR BH, BH      ;removing previous values from BH register
    MUL BX          ;multiplying BX with AX
    
    MOV BL, 5       ;puting 5 into BL register
    XOR BH, BH      ;removing previous values
    DIV BX          ;DIV BX with AX
    
    ADD AX, 32      ;sum 32 with AX
    SUB AX, 1       ;sub 1 from AX
    MOV FER, AX     ;transfer result from AX to FER
    
    
    MAIN ENDP       ;end  procedure
END MAIN
RET


