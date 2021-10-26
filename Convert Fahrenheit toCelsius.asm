;Convert 999oF (Fahrenheit) to C (Celsius) using the following expression and store in a variable C: °C = (°F - 32) x 5/9 + 1

;C = (°F - 32) x 5/9 + 1

ORG 0100H

.DATA               ;date section
FER DW 999          ;assigning 999 in FER
CEL DW ?            ;CEL value is ?

.CODE               ;code section
MAIN PROC           ;main procedure
   XOR AX, AX       ;removing previous register value
   MOV AX, FER      ;taking AX register and puting the FER value into it
   SUB AX, 32       ;Sub 32 with AX registers

   MOV BL, 5        ;put 5 value into BL register
   XOR BH, BH       ;removing previous values
   MUL BX           ;multiply BX with AX

   MOV BL, 9        ;putting 9 value into BL register
   XOR BH, BH       ;removing previous values from BH registers
   DIV BX           ;DIV BX with AX

   ADD AX, 1        ;Sum 1 in AX register
   MOV CEL, AX      ;transfer result from AX to CEL

   MAIN ENDP        ;End procedure
END MAIN
RET

