org 100h

jmp main

intro db "Positive",10,13,"    2",10,13,"     Digits",10,13,"         Calculator$"
ansquotient db 10,13,10,"Quotient: $"
ansremainder db 10,13,"Remainder: $"
mainmenu db 10,13,10,"Select Operation:",10,13,"1) Addition",10,13,"2) Subtraction",10,13,"3) Multiplication",10,13,"4) Division",10,13,"Input operation's",10,13, "number: $"
askfirst db 10,13,10,"Input 1st number",10,13,"in 2 Digits: $"
asksecond db 10,13,10,"Input 2nd number",10,13,"in 2 Digits: $"
askdividend db 10,13,10,"Input Dividend",10,13,"in 2 Digits: $"
askdivisor db 10,13,10,"Input Divisor",10,13,"in 2 Digits: $"
askminuend db 10,13,10,"Input Minuend",10,13,"in 2 Digits: $"
asksubtrahend db 10,13,10,"Input Subtrahend",10,13,"in 2 Digits: $"
addselect db "You have selected:",10,13,"Addition$"
subselect db "You have selected:",10,13,"Subtraction$"
mulselect db "You have selected:",10,13,"Multiplication$"
divselect db "You have selected:",10,13,"Division$"
sum1 db "?"
sum22 db "?"
sum2 db "?"
sum3 db "?"
sum32 db "?"
signdiff db "?"
var1stsubtra db "?"
var2ndsubtra db "?"
diff1 db "?"
diff2 db "?"
prod1 db "?"
prod2 db "?"
prod3 db "?"
prod4 db "?"
prod12 db "?"
prod13 db "?"
prod22 db "?"
prod23 db "?"
prod24 db "?"
fact1digit1 db "?"
fact1digit2 db "?"
fact2digit1 db "?"
fact2digit2 db "?"
zerocheck db "?"
divid1st db "?"
divid2nd db "?"
divis1st db "?"
divis2nd db "?"
remainder db "?"
remainder1 db "?"
remainder2 db "?"
quotient db "?"
quotient1 db "?"
quotient2 db "?"
varfirstadd db "?"
varsecondadd db "?"
varfirstadd2 db "?"
varsecondadd2 db "?"
varfirstsub db "?"
varsecondsub db "?"

main proc near

mov ah,06h
mov al,0
mov bh,0FFh
mov cx,0400h
mov dx,0413h
int 10h

mov ah,06h
mov al,0
mov bh,0FFh
mov cx,0013h
mov dx,1813h
int 10h

mov ah,06h
mov al,0
mov bh,0FFh
mov cx,004Fh
mov dx,184Fh
int 10h

mov ah,09h
lea dx,intro
int 21h

lea dx,mainmenu
int 21h

selectop:
mov ah,06h
mov al,00h
mov bh,0BAh
mov cx,002Ch
mov dx,1836h
int 10h

mov ah,02h
mov bh,00h
mov dx,0B07h
int 10h

mov ah,01h
int 21h

cmp al,30h
jle selectop
cmp al,35h
jge selectop

cmp al,31h
je addition
cmp al,32h
je subtraction
cmp al,33h
je multiplication
cmp al,34h
je division

addition:
mov ah,06h
mov al,0
mov bh,07h
mov cx,0500h
mov dx,01812h
int 10h

mov ah,06h
mov al,00h
mov bh,0Ah
mov cx,002Ch
mov dx,1836h
int 10h
       
;plussign       
mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0B2Dh
mov dx,0D35h
int 10h
mov cx,0830h
mov dx,1032h
int 10h
       
mov ah,02h
mov bh,00h
mov dx,0500h
int 10h

mov ah,09h
lea dx,addselect
int 21h

mov ah,09h
lea dx,askfirst
int 21h

firstdigitadd:
mov ah,02h
mov bh,00h
mov dx,090Ch
int 10h

mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0014h
mov dx,181Eh
int 10h

mov ah,01h
int 21h
mov bh,al
cmp bh,2Fh
jle firstdigitadd
cmp bh,3Ah
jge firstdigitadd
mov varfirstadd,bh

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0014h
mov dx,181Eh
int 10h

cmp varfirstadd,30h
je numberzero
cmp varfirstadd,31h
je numberone
cmp varfirstadd,32h
je numbertwo
cmp varfirstadd,33h
je numberthree
cmp varfirstadd,34h   
je numberfour
cmp varfirstadd,35h   
je numberfive
cmp varfirstadd,36h   
je numbersix
cmp varfirstadd,37h   
je numberseven
cmp varfirstadd,38h   
je numbereight
cmp varfirstadd,39h   
je numbernine

numberzero:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h

mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitadd

numberone:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
jmp seconddigitadd

numbertwo:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitadd

numberthree:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitadd

numberfour:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
jmp seconddigitadd

numberfive:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitadd

numbersix:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitadd

numberseven:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
jmp seconddigitadd

numbereight:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitadd

numbernine:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
jmp seconddigitadd

seconddigitadd:
mov ah,02h
mov bh,00h
mov dx,090Dh
int 10h

mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0020h
mov dx,182Ah
int 10h

mov ah,01h
int 21h
mov bl,al
cmp bl,2Fh
jle seconddigitadd
cmp bl,3Ah
jge seconddigitadd
mov varsecondadd,bl

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0020h
mov dx,182Ah
int 10h

cmp varsecondadd,30h
je numberzero2
cmp varsecondadd,31h
je numberone2
cmp varsecondadd,32h
je numbertwo2
cmp varsecondadd,33h
je numberthree2
cmp varsecondadd,34h   
je numberfour2
cmp varsecondadd,35h   
je numberfive2
cmp varsecondadd,36h   
je numbersix2
cmp varsecondadd,37h   
je numberseven2
cmp varsecondadd,38h   
je numbereight2
cmp varsecondadd,39h   
je numbernine2

numberzero2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitaddask

numberone2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
jmp seconddigitaddask

numbertwo2:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitaddask

numberthree2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitaddask

numberfour2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp seconddigitaddask

numberfive2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitaddask

numbersix2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitaddask

numberseven2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
jmp seconddigitaddask

numbereight2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitaddask

numbernine2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp seconddigitaddask

seconddigitaddask:

mov ah,09h
lea dx,asksecond
int 21h

mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0038h
mov dx,1842h
int 10h

firstdigitadd2:
mov ah,02h
mov bh,00h
mov dx,0C0Ch
int 10h
mov ah,01h
int 21h
mov dh,al
cmp dh,2Fh
jle firstdigitadd2
cmp dh,3Ah
jge firstdigitadd2
mov varfirstadd2,dh

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0038h
mov dx,1842h
int 10h

cmp varfirstadd2,30h
je numberzero3
cmp varfirstadd2,31h
je numberone3
cmp varfirstadd2,32h
je numbertwo3
cmp varfirstadd2,33h
je numberthree3
cmp varfirstadd2,34h   
je numberfour3
cmp varfirstadd2,35h   
je numberfive3
cmp varfirstadd2,36h   
je numbersix3
cmp varfirstadd2,37h   
je numberseven3
cmp varfirstadd2,38h   
je numbereight3
cmp varfirstadd2,39h   
je numbernine3

numberzero3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitadd2

numberone3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
jmp seconddigitadd2

numbertwo3:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitadd2

numberthree3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitadd2

numberfour3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp seconddigitadd2

numberfive3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitadd2

numbersix3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitadd2

numberseven3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
jmp seconddigitadd2

numbereight3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitadd2

numbernine3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp seconddigitadd2

seconddigitadd2:
mov ah,02h
mov bh,00h
mov dx,0C0Dh
int 10h

mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0044h
mov dx,184Eh
int 10h

mov ah,01h
int 21h
mov dl,al
cmp dl,2Fh
jle seconddigitadd2
cmp dl,3Ah
jge seconddigitadd2
mov varsecondadd2,dl

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0044h
mov dx,184Eh
int 10h

cmp varsecondadd2,30h
je numberzero4
cmp varsecondadd2,31h
je numberone4
cmp varsecondadd2,32h
je numbertwo4
cmp varsecondadd2,33h
je numberthree4
cmp varsecondadd2,34h   
je numberfour4
cmp varsecondadd2,35h   
je numberfive4
cmp varsecondadd2,36h   
je numbersix4
cmp varsecondadd2,37h   
je numberseven4
cmp varsecondadd2,38h   
je numbereight4
cmp varsecondadd2,39h   
je numbernine4

numberzero4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp addcalculate

numberone4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
jmp addcalculate

numbertwo4:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp addcalculate

numberthree4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp addcalculate

numberfour4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp addcalculate

numberfive4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp addcalculate

numbersix4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp addcalculate

numberseven4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
jmp addcalculate

numbereight4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp addcalculate

numbernine4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp addcalculate

addcalculate:
mov dl,varsecondadd2
mov dh,varfirstadd2
mov bh,varfirstadd
mov bl,varsecondadd

mov ax,0000h
mov al,bl
mov bl,dl
add al,bl
aaa
or ax,3030h
mov sum1,al
mov sum2,ah
mov ax,0000h
mov al,bh
mov bl,dh
add al,bl
aaa
or ax,3030h
mov sum3,ah
mov sum22,al
mov ax,0000h
mov al,sum2
mov bl,sum22
add al,bl
aaa
or ax,3030h
mov sum2,al
mov sum32,ah
mov ax,0000h
mov al,sum3
add al,sum32
aaa
or ax,3030h
mov sum3,al

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0014h
mov dx,184Eh
int 10h

mov ax,0200h
mov dl,10
int 21h
mov dl,13
int 21h
mov dl,10
int 21h       
       
mov dl,'S'
int 21h
mov dl,'u'
int 21h
mov dl,'m'
int 21h
mov dl,':'
int 21h
mov dl,' '
int 21h

cmp sum3,30h
je checknext
cmp sum3,31h
je numberoneans3add
cmp sum3,32h
je numbertwoans3add
cmp sum3,33h
je numberthreeans3add
cmp sum3,34h   
je numberfourans3add
cmp sum3,35h   
je numberfiveans3add
cmp sum3,36h   
je numbersixans3add
cmp sum3,37h   
je numbersevenans3add
cmp sum3,38h   
je numbereightans3add
cmp sum3,39h   
je numbernineans3add

numberoneans3add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0232h
mov dx,0B32h
int 10h
;bot-right-seg1
mov cx,0C32h
mov dx,1532h
int 10h
;top-right-seg2
mov cx,0333h
mov dx,0A33h
int 10h        
;bot-right-seg2
mov cx,0D33h
mov dx,1433h
int 10h
jmp printsum3

numbertwoans3add:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D2Dh
mov dx,142Dh
int 10h
;bot-left-seg2
mov cx,0C2Eh
mov dx,152Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printsum3

numberthreeans3add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printsum3

numberfourans3add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
jmp printsum3

numberfiveans3add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printsum3

numbersixans3add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;bot-left-seg1
mov cx,0D2Dh
mov dx,142Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;bot-left-seg2
mov cx,0C2Eh
mov dx,152Eh
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printsum3

numbersevenans3add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
jmp printsum3

numbereightans3add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;bot-left-seg1
mov cx,0D2Dh
mov dx,142Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;bot-left-seg2
mov cx,0C2Eh
mov dx,152Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printsum3

numbernineans3add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
jmp printsum3

printsum3:
mov dh,'1'
mov dl,sum3
int 21h
checknext:
cmp dh,'1'
jne 2digits
je print2nd
2digits:
cmp sum2,30h
je print3rd
print2nd:

cmp sum2,30h
je numberzeroans2add
cmp sum2,31h
je numberoneans2add
cmp sum2,32h
je numbertwoans2add
cmp sum2,33h
je numberthreeans2add
cmp sum2,34h   
je numberfourans2add
cmp sum2,35h   
je numberfiveans2add
cmp sum2,36h   
je numbersixans2add
cmp sum2,37h   
je numbersevenans2add
cmp sum2,38h   
je numbereightans2add
cmp sum2,39h   
je numbernineans2add

numberzeroans2add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printout2nd

numberoneans2add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
jmp printout2nd

numbertwoans2add:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printout2nd

numberthreeans2add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printout2nd

numberfourans2add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp printout2nd

numberfiveans2add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printout2nd

numbersixans2add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printout2nd

numbersevenans2add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
jmp printout2nd

numbereightans2add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printout2nd

numbernineans2add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp printout2nd

printout2nd:
mov dl,sum2
int 21h

cmp sum1,30h
je numberzeroans1add
cmp sum1,31h
je numberoneans1add
cmp sum1,32h
je numbertwoans1add
cmp sum1,33h
je numberthreeans1add
cmp sum1,34h   
je numberfourans1add
cmp sum1,35h   
je numberfiveans1add
cmp sum1,36h   
je numbersixans1add
cmp sum1,37h   
je numbersevenans1add
cmp sum1,38h   
je numbereightans1add
cmp sum1,39h   
je numbernineans1add

numberzeroans1add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print3rd

numberoneans1add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
jmp print3rd

numbertwoans1add:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print3rd

numberthreeans1add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print3rd

numberfourans1add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp print3rd

numberfiveans1add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print3rd

numbersixans1add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print3rd

numbersevenans1add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
jmp print3rd

numbereightans1add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print3rd

numbernineans1add:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp print3rd

print3rd:
mov dl,sum1
int 21h

int 20h

subtraction:
mov ah,06h
mov al,0
mov bh,07h
mov cx,0500h
mov dx,01812h
int 10h

mov ah,06h
mov al,00h
mov bh,0Ah
mov cx,002Ch
mov dx,1836h
int 10h

;subsign       
mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0B2Dh
mov dx,0D35h
int 10h

mov ah,02h
mov bh,00h
mov dx,0500h
int 10h

mov ah,09h
lea dx,subselect
int 21h

lea dx,askminuend
int 21h

firstdigitsub:
mov ah,02h
mov bh,00h
mov dx,090Ch
int 10h

mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0014h
mov dx,181Eh
int 10h

mov ah,01h
int 21h
mov bh,al
cmp bh,2Fh
jle firstdigitsub
cmp bh,3Ah
jge firstdigitsub
mov varfirstsub,bh

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0014h
mov dx,181Eh
int 10h

cmp varfirstsub,30h
je numberzero1subask
cmp varfirstsub,31h
je numberone1subask
cmp varfirstsub,32h
je numbertwo1subask
cmp varfirstsub,33h
je numberthree1subask
cmp varfirstsub,34h   
je numberfour1subask
cmp varfirstsub,35h   
je numberfive1subask
cmp varfirstsub,36h   
je numbersix1subask
cmp varfirstsub,37h   
je numberseven1subask
cmp varfirstsub,38h   
je numbereight1subask
cmp varfirstsub,39h   
je numbernine1subask

numberzero1subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitsubask

numberone1subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
jmp seconddigitsubask

numbertwo1subask:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitsubask

numberthree1subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitsubask

numberfour1subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
jmp seconddigitsubask

numberfive1subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitsubask

numbersix1subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitsubask

numberseven1subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
jmp seconddigitsubask

numbereight1subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitsubask

numbernine1subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
jmp seconddigitsubask

seconddigitsubask:
mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0020h
mov dx,182Ah
int 10h

seconddigitsub:
mov ah,02h
mov bh,00h
mov dx,090Dh
int 10h
mov ah,01h
int 21h
mov bl,al
cmp bl,2Fh
jle seconddigitsub
cmp bl,3Ah
jge seconddigitsub
mov varsecondsub,bl

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0020h
mov dx,182Ah
int 10h

cmp varsecondsub,30h
je numberzero2subask
cmp varsecondsub,31h
je numberone2subask
cmp varsecondsub,32h
je numbertwo2subask
cmp varsecondsub,33h
je numberthree2subask
cmp varsecondsub,34h   
je numberfour2subask
cmp varsecondsub,35h   
je numberfive2subask
cmp varsecondsub,36h   
je numbersix2subask
cmp varsecondsub,37h   
je numberseven2subask
cmp varsecondsub,38h   
je numbereight2subask
cmp varsecondsub,39h   
je numbernine2subask

numberzero2subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp asksubtrahend1

numberone2subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
jmp asksubtrahend1

numbertwo2subask:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp asksubtrahend1

numberthree2subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp asksubtrahend1

numberfour2subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp asksubtrahend1

numberfive2subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp asksubtrahend1

numbersix2subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp asksubtrahend1

numberseven2subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
jmp asksubtrahend1

numbereight2subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp asksubtrahend1

numbernine2subask:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp asksubtrahend1

asksubtrahend1:
mov ah,09h
lea dx,asksubtrahend
int 21h

mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0038h
mov dx,1842h
int 10h

firstdigitsub2:
mov ah,02h
mov bh,00h
mov dx,0C0Ch
int 10h
mov ah,01h
int 21h
mov dh,al
cmp dh,2Fh
jle firstdigitsub2
cmp dh,3Ah
jge firstdigitsub2
mov ch,dh
mov var1stsubtra,ch

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0038h
mov dx,1842h
int 10h

cmp var1stsubtra,30h
je numberzero1subask2
cmp var1stsubtra,31h
je numberone1subask2
cmp var1stsubtra,32h
je numbertwo1subask2
cmp var1stsubtra,33h
je numberthree1subask2
cmp var1stsubtra,34h   
je numberfour1subask2
cmp var1stsubtra,35h   
je numberfive1subask2
cmp var1stsubtra,36h   
je numbersix1subask2
cmp var1stsubtra,37h   
je numberseven1subask2
cmp var1stsubtra,38h   
je numbereight1subask2
cmp var1stsubtra,39h   
je numbernine1subask2

numberzero1subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitsub2ask

numberone1subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
jmp seconddigitsub2ask

numbertwo1subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitsub2ask

numberthree1subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitsub2ask

numberfour1subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp seconddigitsub2ask

numberfive1subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitsub2ask

numbersix1subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitsub2ask

numberseven1subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
jmp seconddigitsub2ask

numbereight1subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitsub2ask

numbernine1subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp seconddigitsub2ask

seconddigitsub2ask:
mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0044h
mov dx,184Eh
int 10h

seconddigitsub2:
mov ah,02h
mov bh,00h
mov dx,0C0Dh
int 10h
mov ah,01h
int 21h
mov dl,al
cmp dl,2Fh
jle seconddigitsub2
cmp dl,3Ah
jge seconddigitsub2
mov cl,dl
mov var2ndsubtra,cl

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0044h
mov dx,184Eh
int 10h

cmp var2ndsubtra,30h
je numberzero2subask2
cmp var2ndsubtra,31h
je numberone2subask2
cmp var2ndsubtra,32h
je numbertwo2subask2
cmp var2ndsubtra,33h
je numberthree2subask2
cmp var2ndsubtra,34h   
je numberfour2subask2
cmp var2ndsubtra,35h   
je numberfive2subask2
cmp var2ndsubtra,36h   
je numbersix2subask2
cmp var2ndsubtra,37h   
je numberseven2subask2
cmp var2ndsubtra,38h   
je numbereight2subask2
cmp var2ndsubtra,39h   
je numbernine2subask2

numberzero2subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp subcalculate

numberone2subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
jmp subcalculate

numbertwo2subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp subcalculate

numberthree2subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp subcalculate

numberfour2subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp subcalculate

numberfive2subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp subcalculate

numbersix2subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp subcalculate

numberseven2subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
jmp subcalculate

numbereight2subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp subcalculate

numbernine2subask2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp subcalculate

subcalculate:
mov dl,var2ndsubtra
mov dh,var1stsubtra
mov bh,varfirstsub
mov bl,varsecondsub

mov ah,bh
mov al,bl
mov bh,dh
mov bl,dl

checksign:
cmp ah,bh
jg positive
jl negative
je check2nddigit

check2nddigit:
cmp al,bl
jge positive
jl negative

positive:
mov signdiff,'+'
jmp subtract

negative:
mov signdiff,'-'
jmp subtract

subtract:
cmp signdiff,'-'
je minlesssub
sub al,bl
aas
sub ah,bh
aas
or ax,3030h
mov diff2,ah
mov diff1,al
jmp printoutdifference

minlesssub:
mov dl,al
mov dh,ah
mov al,bl
mov ah,bh
sub al,dl
aas
sub ah,dh
aas
or ax,3030h
mov diff2,ah
mov diff1,al
jmp printoutdifference

printoutdifference:

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0014h
mov dx,184Eh
int 10h

cmp signdiff,'-'
je printnegativesign222
jne printprint

printnegativesign222:
mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0B2Dh
mov dx,0D35h
int 10h

printprint:
mov ax,0200h

mov dl,10
int 21h
mov dl,13
int 21h
mov dl,10
int 21h

mov dl,'D'
int 21h
mov dl,'i'
int 21h
mov dl,'f'
int 21h
mov dl,'f'
int 21h
mov dl,'e'
int 21h
mov dl,'r'
int 21h
mov dl,'e'
int 21h
mov dl,'n'
int 21h
mov dl,'c'
int 21h
mov dl,'e'
int 21h
mov dl,':'
int 21h
mov dl,' '
int 21h
mov dl,signdiff
int 21h

cmp diff2,30h
je print2nddif
cmp diff2,31h
je numberoneans2sub
cmp diff2,32h
je numbertwoans2sub
cmp diff2,33h
je numberthreeans2sub
cmp diff2,34h   
je numberfourans2sub
cmp diff2,35h   
je numberfiveans2sub
cmp diff2,36h   
je numbersixans2sub
cmp diff2,37h   
je numbersevenans2sub
cmp diff2,38h   
je numbereightans2sub
cmp diff2,39h   
je numbernineans2sub

numberoneans2sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
jmp print1stdifffinal

numbertwoans2sub:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp print1stdifffinal

numberthreeans2sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp print1stdifffinal

numberfourans2sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp print1stdifffinal

numberfiveans2sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp print1stdifffinal

numbersixans2sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp print1stdifffinal

numbersevenans2sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
jmp print1stdifffinal

numbereightans2sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp print1stdifffinal

numbernineans2sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp print1stdifffinal

print1stdifffinal:
mov dl,diff2
int 21h

print2nddif:
cmp diff1,30h
je numberzeroans1sub
cmp diff1,31h
je numberoneans1sub
cmp diff1,32h
je numbertwoans1sub
cmp diff1,33h
je numberthreeans1sub
cmp diff1,34h   
je numberfourans1sub
cmp diff1,35h   
je numberfiveans1sub
cmp diff1,36h   
je numbersixans1sub
cmp diff1,37h   
je numbersevenans1sub
cmp diff1,38h   
je numbereightans1sub
cmp diff1,39h   
je numbernineans1sub

numberzeroans1sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print2nddifffinal

numberoneans1sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
jmp print2nddifffinal

numbertwoans1sub:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print2nddifffinal

numberthreeans1sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print2nddifffinal

numberfourans1sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp print2nddifffinal

numberfiveans1sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print2nddifffinal

numbersixans1sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print2nddifffinal

numbersevenans1sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
jmp print2nddifffinal

numbereightans1sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp print2nddifffinal

numbernineans1sub:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp print2nddifffinal

print2nddifffinal:
mov dl,diff1
int 21h

int 20h

multiplication:
mov ah,06h
mov al,0
mov bh,07h
mov cx,0500h
mov dx,01812h
int 10h

mov ah,06h
mov al,00h
mov bh,0Ah
mov cx,002Ch
mov dx,1836h
int 10h

;mulsign       
mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0B30h
mov dx,0D32h
int 10h

mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,082Dh
mov dx,0A2Fh
int 10h

mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0833h
mov dx,0A35h
int 10h

mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0E2Dh
mov dx,102Fh
int 10h

mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0E33h
mov dx,1035h
int 10h

mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0A2Fh
mov dx,0B30h
int 10h

mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0A32h
mov dx,0B33h
int 10h

mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0D2Fh
mov dx,0E30h
int 10h

mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0D32h
mov dx,0E33h
int 10h

mov ah,02h
mov bh,00h
mov dx,0500h
int 10h

mov ah,09h
lea dx,mulselect
int 21h

mov ah,06h
mov al,00h
mov bh,0BAh
mov cx,0014h
mov dx,181Eh
int 10h

mov ah,09h
lea dx,askfirst
int 21h

firstdigitmul:
mov ah,02h
mov bh,00h
mov dx,090Ch
int 10h
mov ah,01h
int 21h
mov bh,al
cmp bh,2Fh
jle firstdigitmul
cmp bh,3Ah
jge firstdigitmul
mov fact1digit1,bh

mov ah,06h
mov al,00h
mov bh,0Ah
mov cx,0014h
mov dx,181Eh
int 10h

cmp fact1digit1,30h
je numberzerofact1digit1
cmp fact1digit1,31h
je numberonefact1digit1
cmp fact1digit1,32h
je numbertwofact1digit1
cmp fact1digit1,33h
je numberthreefact1digit1
cmp fact1digit1,34h   
je numberfourfact1digit1
cmp fact1digit1,35h   
je numberfivefact1digit1
cmp fact1digit1,36h   
je numbersixfact1digit1
cmp fact1digit1,37h   
je numbersevenfact1digit1
cmp fact1digit1,38h   
je numbereightfact1digit1
cmp fact1digit1,39h   
je numberninefact1digit1

numberzerofact1digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitmulask

numberonefact1digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
jmp seconddigitmulask

numbertwofact1digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitmulask

numberthreefact1digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitmulask

numberfourfact1digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
jmp seconddigitmulask

numberfivefact1digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitmulask

numbersixfact1digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitmulask

numbersevenfact1digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
jmp seconddigitmulask

numbereightfact1digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitmulask

numberninefact1digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
jmp seconddigitmulask

seconddigitmulask:
mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0020h
mov dx,182Ah
int 10h

seconddigitmul:
mov ah,02h
mov bh,00h
mov dx,090Dh
int 10h
mov ah,01h
int 21h
mov bl,al
cmp bl,2Fh
jle seconddigitmul
cmp bl,3Ah
jge seconddigitmul
mov fact1digit2,bl

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0020h
mov dx,182Ah
int 10h

cmp fact1digit2,30h
je numberzerofact1digit2
cmp fact1digit2,31h
je numberonefact1digit2
cmp fact1digit2,32h
je numbertwofact1digit2
cmp fact1digit2,33h
je numberthreefact1digit2
cmp fact1digit2,34h   
je numberfourfact1digit2
cmp fact1digit2,35h   
je numberfivefact1digit2
cmp fact1digit2,36h   
je numbersixfact1digit2
cmp fact1digit2,37h   
je numbersevenfact1digit2
cmp fact1digit2,38h   
je numbereightfact1digit2
cmp fact1digit2,39h   
je numberninefact1digit2

numberzerofact1digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp firstdigitmul2ask

numberonefact1digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
jmp firstdigitmul2ask

numbertwofact1digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp firstdigitmul2ask

numberthreefact1digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp firstdigitmul2ask

numberfourfact1digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp firstdigitmul2ask

numberfivefact1digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp firstdigitmul2ask

numbersixfact1digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp firstdigitmul2ask

numbersevenfact1digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
jmp firstdigitmul2ask

numbereightfact1digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp firstdigitmul2ask

numberninefact1digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp firstdigitmul2ask

firstdigitmul2ask:
mov ah,06h
mov al,00h
mov bh,0BAh
mov cx,0038h
mov dx,1842h
int 10h

mov ah,09h
lea dx,asksecond
int 21h

firstdigitmul2:
mov ah,02h
mov bh,00h
mov dx,0C0Ch
int 10h
mov ah,01h
int 21h
mov dh,al
cmp dh,2Fh
jle firstdigitmul2
cmp dh,3Ah
jge firstdigitmul2
mov ch,dh
mov fact2digit1,ch

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0038h
mov dx,1842h
int 10h

cmp fact2digit1,30h
je numberzerofact2digit1
cmp fact2digit1,31h
je numberonefact2digit1
cmp fact2digit1,32h
je numbertwofact2digit1
cmp fact2digit1,33h
je numberthreefact2digit1
cmp fact2digit1,34h   
je numberfourfact2digit1
cmp fact2digit1,35h   
je numberfivefact2digit1
cmp fact2digit1,36h   
je numbersixfact2digit1
cmp fact2digit1,37h   
je numbersevenfact2digit1
cmp fact2digit1,38h   
je numbereightfact2digit1
cmp fact2digit1,39h   
je numberninefact2digit1

numberzerofact2digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitmul2ask

numberonefact2digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
jmp seconddigitmul2ask

numbertwofact2digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitmul2ask

numberthreefact2digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitmul2ask

numberfourfact2digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp seconddigitmul2ask

numberfivefact2digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitmul2ask

numbersixfact2digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitmul2ask

numbersevenfact2digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
jmp seconddigitmul2ask

numbereightfact2digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitmul2ask

numberninefact2digit1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp seconddigitmul2ask

seconddigitmul2ask:
mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0044h
mov dx,184Eh
int 10h

seconddigitmul2:
mov ah,02h
mov bh,00h
mov dx,0C0Dh
int 10h
mov ah,01h
int 21h
mov dl,al
cmp dl,2Fh
jle seconddigitmul2
cmp dl,3Ah
jge seconddigitmul2
mov cl,dl
mov fact2digit2,cl

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0044h
mov dx,184Eh
int 10h

cmp fact2digit2,30h
je numberzerofact2digit2
cmp fact2digit2,31h
je numberonefact2digit2
cmp fact2digit2,32h
je numbertwofact2digit2
cmp fact2digit2,33h
je numberthreefact2digit2
cmp fact2digit2,34h   
je numberfourfact2digit2
cmp fact2digit2,35h   
je numberfivefact2digit2
cmp fact2digit2,36h   
je numbersixfact2digit2
cmp fact2digit2,37h   
je numbersevenfact2digit2
cmp fact2digit2,38h   
je numbereightfact2digit2
cmp fact2digit2,39h   
je numberninefact2digit2

numberzerofact2digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp multiplytransfer

numberonefact2digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
jmp multiplytransfer

numbertwofact2digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp multiplytransfer

numberthreefact2digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp multiplytransfer

numberfourfact2digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp multiplytransfer

numberfivefact2digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp multiplytransfer

numbersixfact2digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp multiplytransfer

numbersevenfact2digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
jmp multiplytransfer

numbereightfact2digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp multiplytransfer

numberninefact2digit2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp multiplytransfer

multiplytransfer:
mov dh,fact2digit1
mov dl,fact2digit2
mov bh,fact1digit1
mov bl,fact1digit2

cmp bh,dh
jl reverse
je secondcheckmul
jg multiply

secondcheckmul:
cmp bl,dl
jl reverse
jge multiply

reverse:
mov bl,dl
mov bh,dh
mov dl,fact1digit2
mov dh,fact1digit1
mov fact1digit1,bh
mov fact1digit2,bl
mov fact2digit1,dh
mov fact2digit2,dl

multiply:
mov ax,0000h
mov al,bl
mov bl,dl
and ax,0F0Fh
and bl,0Fh
mul bl
aam
mov prod1,al
mov prod12,ah
mov ax,0000h
mov al,bh
and al,0Fh
mul bl
add al,prod12
aam
mov prod12,al
mov prod13,ah
mov ax,0000h
mov bl,dh
mov al,fact1digit2
and al,0Fh
and bl,0Fh
mul bl
aam
mov prod22,al
mov prod23,ah
mov ax,0000h
mov al,fact1digit1
and al,0Fh
mul bl
add al,prod23
aam
mov prod23,al
mov prod24,ah

mov ax,0000h
mov bl,prod22
mov al,prod12
add al,bl
aam
mov prod2,al
mov prod3,ah
mov ax,0000h
mov bl,prod23
mov al,prod13
add al,bl
add al,prod3
aam
mov prod3,al
mov prod4,ah
mov ax,0000h
mov al,prod4
mov bl,prod24
add al,bl
aam
mov prod4,al

or prod1,30h
or prod2,30h
or prod3,30h
or prod4,30h

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0014h
mov dx,184Eh
int 10h

mov ax,0200h
mov dl,10
int 21h
mov dl,13
int 21h
mov dl,10
int 21h

mov dl,'P'
int 21h
mov dl,'r'
int 21h
mov dl,'o'
int 21h
mov dl,'d'
int 21h
mov dl,'u'
int 21h
mov dl,'c'
int 21h
mov dl,'t'
int 21h
mov dl,':'
int 21h
mov dl,' '
int 21h

cmp prod4,30h
je checknextprod
cmp prod4,30h
je numberzeroprod4
cmp prod4,31h
je numberoneprod4
cmp prod4,32h
je numbertwoprod4
cmp prod4,33h
je numberthreeprod4
cmp prod4,34h   
je numberfourprod4
cmp prod4,35h   
je numberfiveprod4
cmp prod4,36h   
je numbersixprod4
cmp prod4,37h   
je numbersevenprod4
cmp prod4,38h   
je numbereightprod4
cmp prod4,39h   
je numbernineprod4

numberzeroprod4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printedprod4

numberoneprod4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
jmp printedprod4

numbertwoprod4:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printedprod4

numberthreeprod4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printedprod4

numberfourprod4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp printedprod4

numberfiveprod4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printedprod4

numbersixprod4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printedprod4

numbersevenprod4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
jmp printedprod4

numbereightprod4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printedprod4

numbernineprod4:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp printedprod4

printedprod4:
mov zerocheck,'1'
mov dl,prod4
int 21h
checknextprod:
cmp zerocheck,'1'
jne 3digitsprod
je print3rdprod
3digitsprod:
cmp prod3,30h
je checknextprod2
cmp prod3,31h
je numberoneprod3
cmp prod3,32h
je numbertwoprod3
cmp prod3,33h
je numberthreeprod3
cmp prod3,34h   
je numberfourprod3
cmp prod3,35h   
je numberfiveprod3
cmp prod3,36h   
je numbersixprod3
cmp prod3,37h   
je numbersevenprod3
cmp prod3,38h   
je numbereightprod3
cmp prod3,39h   
je numbernineprod3

numberoneprod3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
jmp printed4thprod

numbertwoprod3:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D2Dh
mov dx,142Dh
int 10h
;bot-left-seg2
mov cx,0C2Eh
mov dx,152Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed4thprod

numberthreeprod3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed4thprod

numberfourprod3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
jmp printed4thprod

numberfiveprod3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed4thprod

numbersixprod3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;bot-left-seg1
mov cx,0D2Dh
mov dx,142Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;bot-left-seg2
mov cx,0C2Eh
mov dx,152Eh
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed4thprod

numbersevenprod3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
jmp printed4thprod

numbereightprod3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;bot-left-seg1
mov cx,0D2Dh
mov dx,142Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;bot-left-seg2
mov cx,0C2Eh
mov dx,152Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed4thprod

numbernineprod3:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
jmp printed4thprod

printed4thprod:
mov zerocheck,'1'
print3rdprod:

cmp prod3,30h
je numberzeroprinted3rdprod
cmp prod3,31h
je numberoneprinted3rdprod
cmp prod3,32h
je numbertwoprinted3rdprod
cmp prod3,33h
je numberthreeprinted3rdprod
cmp prod3,34h   
je numberfourprinted3rdprod
cmp prod3,35h   
je numberfiveprinted3rdprod
cmp prod3,36h   
je numbersixprinted3rdprod
cmp prod3,37h   
je numbersevenprinted3rdprod
cmp prod3,38h   
je numbereightprinted3rdprod
cmp prod3,39h   
je numbernineprinted3rdprod

numberzeroprinted3rdprod:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;bot-left-seg1
mov cx,0D2Dh
mov dx,142Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;bot-left-seg2
mov cx,0C2Eh
mov dx,152Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed3rdprod

numberoneprinted3rdprod:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
jmp printed3rdprod

numbertwoprinted3rdprod:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D2Dh
mov dx,142Dh
int 10h
;bot-left-seg2
mov cx,0C2Eh
mov dx,152Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed3rdprod

numberthreeprinted3rdprod:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed3rdprod

numberfourprinted3rdprod:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
jmp printed3rdprod

numberfiveprinted3rdprod:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed3rdprod

numbersixprinted3rdprod:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;bot-left-seg1
mov cx,0D2Dh
mov dx,142Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;bot-left-seg2
mov cx,0C2Eh
mov dx,152Eh
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed3rdprod

numbersevenprinted3rdprod:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
jmp printed3rdprod

numbereightprinted3rdprod:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;bot-left-seg1
mov cx,0D2Dh
mov dx,142Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;bot-left-seg2
mov cx,0C2Eh
mov dx,152Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
;bot-seg
mov cx,152Fh
mov dx,1633h
int 10h
jmp printed3rdprod

numbernineprinted3rdprod:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,032Dh
mov dx,0A2Dh
int 10h
;top-left-seg2
mov cx,022Eh
mov dx,0B2Eh
int 10h
;top-right-seg1
mov cx,0234h
mov dx,0B34h
int 10h
;bot-right-seg1
mov cx,0C34h
mov dx,1534h
int 10h
;top-right-seg2
mov cx,0335h
mov dx,0A35h
int 10h        
;bot-right-seg2
mov cx,0D35h
mov dx,1435h
int 10h
;top-seg
mov cx,012Fh
mov dx,0233h
int 10h
;mid-seg
mov cx,0B2Fh
mov dx,0C33h
int 10h
jmp printed3rdprod

printed3rdprod:
mov dl,prod3
int 21h
checknextprod2:
cmp zerocheck,'1'
jne 2digitsprod
je print2ndprod
2digitsprod:

cmp prod2,30h
je print1stprod
cmp prod2,31h
je numberoneprod2
cmp prod2,32h
je numbertwoprod2
cmp prod2,33h
je numberthreeprod2
cmp prod2,34h   
je numberfourprod2
cmp prod2,35h   
je numberfiveprod2
cmp prod2,36h   
je numbersixprod2
cmp prod2,37h   
je numbersevenprod2
cmp prod2,38h   
je numbereightprod2
cmp prod2,39h   
je numbernineprod2

numberoneprod2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
jmp secondprodprinted

numbertwoprod2:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numberthreeprod2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numberfourprod2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp secondprodprinted

numberfiveprod2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numbersixprod2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numbersevenprod2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
jmp secondprodprinted

numbereightprod2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numbernineprod2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp secondprodprinted

print2ndprod:

cmp prod2,30h
je numberzeroprod21
cmp prod2,31h
je numberoneprod21
cmp prod2,32h
je numbertwoprod21
cmp prod2,33h
je numberthreeprod21
cmp prod2,34h   
je numberfourprod21
cmp prod2,35h   
je numberfiveprod21
cmp prod2,36h   
je numbersixprod21
cmp prod2,37h   
je numbersevenprod21
cmp prod2,38h   
je numbereightprod21
cmp prod2,39h   
je numbernineprod21

numberzeroprod21:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numberoneprod21:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
jmp secondprodprinted

numbertwoprod21:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numberthreeprod21:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numberfourprod21:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp secondprodprinted

numberfiveprod21:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numbersixprod21:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numbersevenprod21:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
jmp secondprodprinted

numbereightprod21:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp secondprodprinted

numbernineprod21:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp secondprodprinted

secondprodprinted:
mov dl,prod2
int 21h
print1stprod:

cmp prod1,30h
je numberzeroprod1
cmp prod1,31h
je numberoneprod1
cmp prod1,32h
je numbertwoprod1
cmp prod1,33h
je numberthreeprod1
cmp prod1,34h   
je numberfourprod1
cmp prod1,35h   
je numberfiveprod1
cmp prod1,36h   
je numbersixprod1
cmp prod1,37h   
je numbersevenprod1
cmp prod1,38h   
je numbereightprod1
cmp prod1,39h   
je numbernineprod1

numberzeroprod1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp goandprintprod1

numberoneprod1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
jmp goandprintprod1

numbertwoprod1:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp goandprintprod1

numberthreeprod1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp goandprintprod1

numberfourprod1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp goandprintprod1

numberfiveprod1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp goandprintprod1

numbersixprod1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp goandprintprod1

numbersevenprod1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
jmp goandprintprod1

numbereightprod1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp goandprintprod1

numbernineprod1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp goandprintprod1

goandprintprod1:
mov dl,prod1
int 21h

int 20h

division:
mov ah,06h
mov al,0
mov bh,07h
mov cx,0500h
mov dx,01812h
int 10h

mov ah,06h
mov al,00h
mov bh,0Ah
mov cx,002Ch
mov dx,1836h
int 10h

;divsign       
mov ah,06h
mov al,00h
mov bh,0AAh
mov cx,0B2Dh
mov dx,0D35h
int 10h
mov cx,0830h
mov dx,0931h
int 10h
mov cx,0F31h
mov dx,1032h
int 10h

mov ah,02h
mov bh,00h
mov dx,0500h
int 10h

mov ah,09h
lea dx,divselect
int 21h

lea dx,askdividend
int 21h

firstdigitdiv:
mov ah,02h
mov bh,00h
mov dx,090Ch
int 10h

mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0014h
mov dx,181Eh
int 10h

mov ah,01h
int 21h
mov bh,al
cmp bh,2Fh
jle firstdigitdiv
cmp bh,3Ah
jge firstdigitdiv
mov divid2nd,bh

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0014h
mov dx,181Eh
int 10h

cmp divid2nd,30h
je numberzerodivid2nd
cmp divid2nd,31h
je numberonedivid2nd
cmp divid2nd,32h
je numbertwodivid2nd
cmp divid2nd,33h
je numberthreedivid2nd
cmp divid2nd,34h   
je numberfourdivid2nd
cmp divid2nd,35h   
je numberfivedivid2nd
cmp divid2nd,36h   
je numbersixdivid2nd
cmp divid2nd,37h   
je numbersevendivid2nd
cmp divid2nd,38h   
je numbereightdivid2nd
cmp divid2nd,39h   
je numberninedivid2nd

numberzerodivid2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitdiv

numberonedivid2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
jmp seconddigitdiv

numbertwodivid2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitdiv

numberthreedivid2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitdiv

numberfourdivid2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
jmp seconddigitdiv

numberfivedivid2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitdiv

numbersixdivid2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitdiv

numbersevendivid2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
jmp seconddigitdiv

numbereightdivid2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp seconddigitdiv

numberninedivid2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
jmp seconddigitdiv

seconddigitdiv:
mov ah,02h
mov bh,00h
mov dx,090Dh
int 10h

mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0020h
mov dx,182Ah
int 10h

mov ah,01h
int 21h
mov bl,al
cmp bl,2Fh
jle seconddigitdiv
cmp bl,3Ah
jge seconddigitdiv
mov divid1st,bl

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0020h
mov dx,182Ah
int 10h

cmp divid1st,30h
je numberzerodivid1st
cmp divid1st,31h
je numberonedivid1st
cmp divid1st,32h
je numbertwodivid1st
cmp divid1st,33h
je numberthreedivid1st
cmp divid1st,34h   
je numberfourdivid1st
cmp divid1st,35h   
je numberfivedivid1st
cmp divid1st,36h   
je numbersixdivid1st
cmp divid1st,37h   
je numbersevendivid1st
cmp divid1st,38h   
je numbereightdivid1st
cmp divid1st,39h   
je numberninedivid1st

numberzerodivid1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitdiv1ask

numberonedivid1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
jmp seconddigitdiv1ask

numbertwodivid1st:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitdiv1ask

numberthreedivid1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitdiv1ask

numberfourdivid1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp seconddigitdiv1ask

numberfivedivid1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitdiv1ask

numbersixdivid1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitdiv1ask

numbersevendivid1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
jmp seconddigitdiv1ask

numbereightdivid1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp seconddigitdiv1ask

numberninedivid1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp seconddigitdiv1ask

seconddigitdiv1ask:
mov ah,09h
lea dx,askdivisor
int 21h

seconddigitdiv1:
mov ah,02h
mov bh,00h
mov dx,0C0Ch
int 10h

mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0038h
mov dx,1842h
int 10h

mov ah,01h
int 21h
mov dh,al
cmp dh,2Fh
jle seconddigitdiv1
cmp dh,3Ah
jge seconddigitdiv1
mov divis2nd,dh

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0038h
mov dx,1842h
int 10h

cmp divis2nd,30h
je numberzerodivis2nd
cmp divis2nd,31h
je numberonedivis2nd
cmp divis2nd,32h
je numbertwodivis2nd
cmp divis2nd,33h
je numberthreedivis2nd
cmp divis2nd,34h   
je numberfourdivis2nd
cmp divis2nd,35h   
je numberfivedivis2nd
cmp divis2nd,36h   
je numbersixdivis2nd
cmp divis2nd,37h   
je numbersevendivis2nd
cmp divis2nd,38h   
je numbereightdivis2nd
cmp divis2nd,39h   
je numberninedivis2nd

numberzerodivis2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitdiv2

numberonedivis2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
jmp seconddigitdiv2

numbertwodivis2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitdiv2

numberthreedivis2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitdiv2

numberfourdivis2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp seconddigitdiv2

numberfivedivis2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitdiv2

numbersixdivis2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitdiv2

numbersevendivis2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
jmp seconddigitdiv2

numbereightdivis2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp seconddigitdiv2

numberninedivis2nd:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp seconddigitdiv2

seconddigitdiv2:
mov ah,02h
mov bh,00h
mov dx,0C0Dh
int 10h

mov ah,06h
mov al,0
mov bh,0BAh
mov cx,0044h
mov dx,184Eh
int 10h

mov ah,01h
int 21h
mov dl,al
cmp dl,2Fh
jle seconddigitdiv2
cmp dl,3Ah
jge seconddigitdiv2
mov divis1st,dl

mov ah,06h
mov al,0
mov bh,0Ah
mov cx,0044h
mov dx,184Eh
int 10h

cmp divis1st,30h
je numberzerodivis1st
cmp divis1st,31h
je numberonedivis1st
cmp divis1st,32h
je numbertwodivis1st
cmp divis1st,33h
je numberthreedivis1st
cmp divis1st,34h   
je numberfourdivis1st
cmp divis1st,35h   
je numberfivedivis1st
cmp divis1st,36h   
je numbersixdivis1st
cmp divis1st,37h   
je numbersevendivis1st
cmp divis1st,38h   
je numbereightdivis1st
cmp divis1st,39h   
je numberninedivis1st

numberzerodivis1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp divcalculate

numberonedivis1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
jmp divcalculate

numbertwodivis1st:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp divcalculate

numberthreedivis1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp divcalculate

numberfourdivis1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp divcalculate

numberfivedivis1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp divcalculate

numbersixdivis1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp divcalculate

numbersevendivis1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
jmp divcalculate

numbereightdivis1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp divcalculate

numberninedivis1st:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp divcalculate

divcalculate:
mov ax,0000h
mov bx,0000h
mov cx,0000h
mov dx,0000h

mov bh,divid2nd
mov bl,divid1st
mov dh,divis2nd
mov dl,divis1st

and bx,0F0Fh
and dx,0F0Fh

mov ax,bx
aad
mov bx,ax
mov ax,dx
aad
mov dx,ax
mov ax,bx
mov bx,dx
div bl
mov remainder,ah
mov quotient,al
mov ah,00h
aam
mov quotient1,ah
mov quotient2,al
mov al,remainder
mov ah,00h
aam
mov remainder1,ah
mov remainder2,al
or quotient1,30h
or quotient2,30h
or remainder1,30h
or remainder2,30h

mov ah,06h
mov al,00h
mov bh,0Ah
mov cx,0014h
mov dx,184Fh
int 10h

mov ax,0900h
lea dx,ansquotient
int 21h

cmp quotient1,30h
je numberzeroquotient1
cmp quotient1,31h
je numberonequotient1
cmp quotient1,32h
je numbertwoquotient1
cmp quotient1,33h
je numberthreequotient1
cmp quotient1,34h   
je numberfourquotient1
cmp quotient1,35h   
je numberfivequotient1
cmp quotient1,36h   
je numbersixquotient1
cmp quotient1,37h   
je numbersevenquotient1
cmp quotient1,38h   
je numbereightquotient1
cmp quotient1,39h   
je numberninequotient1

numberzeroquotient1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp printquotient1

numberonequotient1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
jmp printquotient1

numbertwoquotient1:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp printquotient1

numberthreequotient1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp printquotient1

numberfourquotient1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
jmp printquotient1

numberfivequotient1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp printquotient1

numbersixquotient1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp printquotient1

numbersevenquotient1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
jmp printquotient1

numbereightquotient1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;bot-left-seg1
mov cx,0D15h
mov dx,1415h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;bot-left-seg2
mov cx,0C16h
mov dx,1516h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
;bot-seg
mov cx,1517h
mov dx,161Bh
int 10h
jmp printquotient1

numberninequotient1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0315h
mov dx,0A15h
int 10h
;top-left-seg2
mov cx,0216h
mov dx,0B16h
int 10h
;top-right-seg1
mov cx,021Ch
mov dx,0B1Ch
int 10h
;bot-right-seg1
mov cx,0C1Ch
mov dx,151Ch
int 10h
;top-right-seg2
mov cx,031Dh
mov dx,0A1Dh
int 10h        
;bot-right-seg2
mov cx,0D1Dh
mov dx,141Dh
int 10h
;top-seg
mov cx,0117h
mov dx,021Bh
int 10h
;mid-seg
mov cx,0B17h
mov dx,0C1Bh
int 10h
jmp printquotient1

printquotient1:
mov ah,02h
mov dl,quotient1
int 21h

cmp quotient2,30h
je numberzeroquotient2
cmp quotient2,31h
je numberonequotient2
cmp quotient2,32h
je numbertwoquotient2
cmp quotient2,33h
je numberthreequotient2
cmp quotient2,34h   
je numberfourquotient2
cmp quotient2,35h   
je numberfivequotient2
cmp quotient2,36h   
je numbersixquotient2
cmp quotient2,37h   
je numbersevenquotient2
cmp quotient2,38h   
je numbereightquotient2
cmp quotient2,39h   
je numberninequotient2

numberzeroquotient2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printquotient2

numberonequotient2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
jmp printquotient2

numbertwoquotient2:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printquotient2

numberthreequotient2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printquotient2

numberfourquotient2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp printquotient2

numberfivequotient2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printquotient2

numbersixquotient2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printquotient2

numbersevenquotient2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
jmp printquotient2

numbereightquotient2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;bot-left-seg1
mov cx,0D21h
mov dx,1421h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;bot-left-seg2
mov cx,0C22h
mov dx,1522h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
;bot-seg
mov cx,1523h
mov dx,1627h
int 10h
jmp printquotient2

numberninequotient2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0321h
mov dx,0A21h
int 10h
;top-left-seg2
mov cx,0222h
mov dx,0B22h
int 10h
;top-right-seg1
mov cx,0228h
mov dx,0B28h
int 10h
;bot-right-seg1
mov cx,0C28h
mov dx,1528h
int 10h
;top-right-seg2
mov cx,0329h
mov dx,0A29h
int 10h        
;bot-right-seg2
mov cx,0D29h
mov dx,1429h
int 10h
;top-seg
mov cx,0123h
mov dx,0227h
int 10h
;mid-seg
mov cx,0B23h
mov dx,0C27h
int 10h
jmp printquotient2

printquotient2:
mov ah,02h
mov dl,quotient2
int 21h

mov ah,06h
mov al,0
mov bh,0AAh
mov cx,0D2Dh
mov dx,142Dh
int 10h
mov cx,0C2Eh
mov dx,152Eh
int 10h
mov cx,0B2Fh
mov dx,0C33h
int 10h

mov ah,09h
lea dx,ansremainder
int 21h

cmp remainder1,30h
je numberzeroremainder1
cmp remainder1,31h
je numberoneremainder1
cmp remainder1,32h
je numbertworemainder1
cmp remainder1,33h
je numberthreeremainder1
cmp remainder1,34h   
je numberfourremainder1
cmp remainder1,35h   
je numberfiveremainder1
cmp remainder1,36h   
je numbersixremainder1
cmp remainder1,37h   
je numbersevenremainder1
cmp remainder1,38h   
je numbereightremainder1
cmp remainder1,39h   
je numbernineremainder1

numberzeroremainder1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printremainder1

numberoneremainder1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
jmp printremainder1

numbertworemainder1:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printremainder1

numberthreeremainder1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printremainder1

numberfourremainder1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp printremainder1

numberfiveremainder1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printremainder1

numbersixremainder1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printremainder1

numbersevenremainder1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
jmp printremainder1

numbereightremainder1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;bot-left-seg1
mov cx,0D39h
mov dx,1439h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;bot-left-seg2
mov cx,0C3Ah
mov dx,153Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
;bot-seg
mov cx,153Bh
mov dx,163Fh
int 10h
jmp printremainder1

numbernineremainder1:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0339h
mov dx,0A39h
int 10h
;top-left-seg2
mov cx,023Ah
mov dx,0B3Ah
int 10h
;top-right-seg1
mov cx,0240h
mov dx,0B40h
int 10h
;bot-right-seg1
mov cx,0C40h
mov dx,1540h
int 10h
;top-right-seg2
mov cx,0341h
mov dx,0A41h
int 10h        
;bot-right-seg2
mov cx,0D41h
mov dx,1441h
int 10h
;top-seg
mov cx,013Bh
mov dx,023Fh
int 10h
;mid-seg
mov cx,0B3Bh
mov dx,0C3Fh
int 10h
jmp printremainder1

printremainder1:
mov ah,02h
mov dl,remainder1
int 21h

cmp remainder2,30h
je numberzeroremainder2
cmp remainder2,31h
je numberoneremainder2
cmp remainder2,32h
je numbertworemainder2
cmp remainder2,33h
je numberthreeremainder2
cmp remainder2,34h   
je numberfourremainder2
cmp remainder2,35h   
je numberfiveremainder2
cmp remainder2,36h   
je numbersixremainder2
cmp remainder2,37h   
je numbersevenremainder2
cmp remainder2,38h   
je numbereightremainder2
cmp remainder2,39h   
je numbernineremainder2

numberzeroremainder2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp printremainder2

numberoneremainder2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
jmp printremainder2

numbertworemainder2:

mov ah,06h
mov al,0
mov bh,0AAh
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp printremainder2

numberthreeremainder2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp printremainder2

numberfourremainder2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp printremainder2

numberfiveremainder2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp printremainder2

numbersixremainder2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp printremainder2

numbersevenremainder2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
jmp printremainder2

numbereightremainder2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;bot-left-seg1
mov cx,0D45h
mov dx,1445h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;bot-left-seg2
mov cx,0C46h
mov dx,1546h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
;bot-seg
mov cx,1547h
mov dx,164Bh
int 10h
jmp printremainder2

numbernineremainder2:

mov ah,06h
mov al,0
mov bh,0AAh
;top-left-seg1
mov cx,0345h
mov dx,0A45h
int 10h
;top-left-seg2
mov cx,0246h
mov dx,0B46h
int 10h
;top-right-seg1
mov cx,024Ch
mov dx,0B4Ch
int 10h
;bot-right-seg1
mov cx,0C4Ch
mov dx,154Ch
int 10h
;top-right-seg2
mov cx,034Dh
mov dx,0A4Dh
int 10h        
;bot-right-seg2
mov cx,0D4Dh
mov dx,144Dh
int 10h
;top-seg
mov cx,0147h
mov dx,024Bh
int 10h
;mid-seg
mov cx,0B47h
mov dx,0C4Bh
int 10h
jmp printremainder2

printremainder2:
mov ah,02h
mov dl,remainder2
int 21h

int 20h

main endp

ret




