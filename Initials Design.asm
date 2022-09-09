
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp main

main proc near

mov ah,02h
mov dl,' '
int 21h

mov bl,1


rerun:
;M Left
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,0232h ;starting position
mov dx,0F39h ;ending position
int 10h

;M Right
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,0244h ;starting position
mov dx,0F4Bh ;ending position
int 10h

;M mid left
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,0439h ;starting position
mov dx,093Ch ;ending position
int 10h

;M Mid right
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,0441h ;starting position
mov dx,0943h ;ending position
int 10h

;M middle
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,063Dh ;starting position
mov dx,0B40h ;ending position
int 10h

;D Wall 
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,020Eh ;starting position
mov dx,0F15h ;ending position
int 10h

;D Upper
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,0215h ;starting position
mov dx,052Ah ;ending position
int 10h

;D curve
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,0424h ;starting position
mov dx,0D2Fh ;ending position
int 10h

;D Hole
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,00h ;background and foreground color
mov cx,0724h ;starting position
mov dx,0A24h ;ending position
int 10h


;D Lower
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,0C15h ;starting position
mov dx,0F2Ah ;ending position
int 10h

;L Wall
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,0204h ;starting position
mov dx,160Bh ;ending position
int 10h

;L Floor
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,77h ;background and foreground color
mov cx,120Bh ;starting position
mov dx,164Bh ;ending position
int 10h

;M Left
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,0232h ;starting position
mov dx,0F39h ;ending position
int 10h

;M Right
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,0244h ;starting position
mov dx,0F4Bh ;ending position
int 10h

;M mid left
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,0439h ;starting position
mov dx,093Ch ;ending position
int 10h

;M Mid right
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,0441h ;starting position
mov dx,0943h ;ending position
int 10h

;M middle
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,063Dh ;starting position
mov dx,0B40h ;ending position
int 10h

;D Wall 
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,020Eh ;starting position
mov dx,0F15h ;ending position
int 10h

;D Upper
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,0215h ;starting position
mov dx,052Ah ;ending position
int 10h

;D curve
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,0424h ;starting position
mov dx,0D2Fh ;ending position
int 10h

;D Hole
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,00h ;background and foreground color
mov cx,0724h ;starting position
mov dx,0A24h ;ending position
int 10h


;D Lower
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,0C15h ;starting position
mov dx,0F2Ah ;ending position
int 10h

;L Wall
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,0204h ;starting position
mov dx,160Bh ;ending position
int 10h

;L Floor
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,55h ;background and foreground color
mov cx,120Bh ;starting position
mov dx,164Bh ;ending position
int 10h

;M Left
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,0232h ;starting position
mov dx,0F39h ;ending position
int 10h

;M Right
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,0244h ;starting position
mov dx,0F4Bh ;ending position
int 10h

;M mid left
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,0439h ;starting position
mov dx,093Ch ;ending position
int 10h

;M Mid right
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,0441h ;starting position
mov dx,0943h ;ending position
int 10h

;M middle
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,063Dh ;starting position
mov dx,0B40h ;ending position
int 10h

;D Wall 
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,020Eh ;starting position
mov dx,0F15h ;ending position
int 10h

;D Upper
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,0215h ;starting position
mov dx,052Ah ;ending position
int 10h

;D curve
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,0424h ;starting position
mov dx,0D2Fh ;ending position
int 10h

;D Hole
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,00h ;background and foreground color
mov cx,0724h ;starting position
mov dx,0A24h ;ending position
int 10h


;D Lower
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,0C15h ;starting position
mov dx,0F2Ah ;ending position
int 10h

;L Wall
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,0204h ;starting position
mov dx,160Bh ;ending position
int 10h

;L Floor
mov ah,06h ;clear screen
mov al,00h  ;scroll through lines
mov bh,0Fh ;background and foreground color
mov cx,120Bh ;starting position
mov dx,164Bh ;ending position
int 10h

inc bl
jnz rerun

main endp

ret




