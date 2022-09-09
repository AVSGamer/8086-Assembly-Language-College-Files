
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp main

msg db "by Lorman Domingo Mamuyac$"

main proc near
    
    mov ah,02h
    mov dl,' '
    int 21h
    
    ;white background
    mov ah,06h
    mov al,0
    mov bh,0FFh
    mov cx,0108h
    mov dx,1731h
    int 10h
    
    ;black outline
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,0224h
    mov dx,152Bh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,0323h
    mov dx,1626h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,032Ah
    mov dx,162Dh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,0422h
    mov dx,072Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,052Fh
    mov dx,062Fh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,0820h
    mov dx,0F2Dh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,0521h
    mov dx,0721h
    int 10h
           
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,0720h
    mov dx,0720h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,0A2Eh
    mov dx,0B2Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,0D2Eh
    mov dx,0E2Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,0F21h
    mov dx,132Fh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,1120h
    mov dx,1230h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,000h
    mov cx,1422h
    mov dx,152Eh
    int 10h
    
    ;lghtblue
    mov ah,06h
    mov al,0
    mov bh,99h
    mov cx,1524h
    mov dx,1526h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,99h
    mov cx,152Ah
    mov dx,152Ch
    int 10h
           
    ;blue
    mov ah,06h
    mov al,0
    mov bh,11h
    mov cx,1524h
    mov dx,1524h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,11h
    mov cx,152Ah
    mov dx,152Ah
    int 10h
           
    ;lightred       
    mov ah,06h
    mov al,0
    mov bh,0CCh
    mov cx,1423h
    mov dx,142Dh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,0CCh
    mov cx,0324h
    mov dx,132Bh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,0CCh
    mov cx,122Ch
    mov dx,122Ch
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,0CCh
    mov cx,112Eh
    mov dx,122Fh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,0CCh
    mov cx,0F2Dh
    mov dx,112Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,0CCh
    mov cx,0D2Ch
    mov dx,0E2Dh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,0CCh
    mov cx,042Ch
    mov dx,0C2Ch
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,0CCh
    mov cx,042Dh
    mov dx,072Dh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,0CCh
    mov cx,052Eh
    mov dx,062Eh
    int 10h
    
    
    ;red
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,0324h
    mov dx,032Bh
    int 10h
           
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,0423h
    mov dx,0424h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,042Ch
    mov dx,042Dh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,052Eh
    mov dx,062Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,062Dh
    mov dx,072Dh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,0529h
    mov dx,0529h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,062Ah
    mov dx,062Ah
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,072Bh
    mov dx,0E2Bh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,0E2Ch
    mov dx,0E2Ch
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,0F2Dh
    mov dx,102Dh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,112Dh
    mov dx,112Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,122Eh
    mov dx,122Fh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,0F2Ah
    mov dx,0F2Ah
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,1029h
    mov dx,1029h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,1022h
    mov dx,1222h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,1121h
    mov dx,1221h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,1124h
    mov dx,1124h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,1224h
    mov dx,1226h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,0522h
    mov dx,0522h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,44h
    mov cx,1423h
    mov dx,1429h
    int 10h
    
    ;brown
    mov ah,06h
    mov al,0
    mov bh,066h
    mov cx,1324h
    mov dx,132Bh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,066h
    mov cx,0A2Bh
    mov dx,0B2Dh
    int 10h
    
    
    ;yellow
    mov ah,06h
    mov al,0
    mov bh,0EEh
    mov cx,1326h
    mov dx,1328h
    int 10h
    
    ;white
    mov ah,06h
    mov al,0
    mov bh,0FFh
    mov cx,0721h
    mov dx,0E2Ah
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,0FFh
    mov cx,0622h
    mov dx,0F29h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,0FFh
    mov cx,0523h
    mov dx,1028h
    int 10h
    
    ;grayeyesnose
    mov ah,06h
    mov al,0
    mov bh,088h
    mov cx,0922h
    mov dx,0C24h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,088h
    mov cx,0926h
    mov dx,0C28h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,088h
    mov cx,0F25h
    mov dx,0F25h
    int 10h
    
    ;lightgray
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,1023h
    mov dx,1028h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,0F22h
    mov dx,0F23h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,0F28h
    mov dx,0F29h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,0D21h
    mov dx,0E22h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,0E29h
    mov dx,0E2Ah
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,092Ah
    mov dx,0C2Ah
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,072Ah
    mov dx,072Ah
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,0721h
    mov dx,0C21h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,0721h
    mov dx,0822h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,0622h
    mov dx,0723h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,077h
    mov cx,0523h
    mov dx,0526h
    int 10h
    
    ;Credits
    ;S
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,040Ah
    mov dx,040Ch
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,040Ah
    mov dx,060Ah
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,060Ah
    mov dx,060Ch
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,060Ch
    mov dx,080Ch
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,080Ah
    mov dx,080Ch
    int 10h
    
    ;H
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,040Eh
    mov dx,080Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,060Eh
    mov dx,0610h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0410h
    mov dx,0810h
    int 10h
    
    ;Y
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0412h
    mov dx,0512h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0613h
    mov dx,0813h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0414h
    mov dx,0514h
    int 10h
    
    ;G
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0A0Ah
    mov dx,0A0Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0A0Eh
    mov dx,0B0Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0A0Ah
    mov dx,100Ah
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,100Ah
    mov dx,100Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0D0Eh
    mov dx,110Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0D0Ch
    mov dx,0D0Eh
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0E0Ch
    mov dx,0E0Ch
    int 10h
    
    ;U
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0A10h
    mov dx,1010h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,1010h
    mov dx,1014h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0A14h
    mov dx,1014h
    int 10h
    
    ;Y
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0A16h
    mov dx,0B16h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0C17h
    mov dx,0D17h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0E18h
    mov dx,1018h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0C19h
    mov dx,0D19h
    int 10h
    
    mov ah,06h
    mov al,0
    mov bh,00h
    mov cx,0A1Ah
    mov dx,0B1Ah
    int 10h
    
    ;Mark
    mov ah,02h
    mov bh,0
    mov dh,14h
    mov dl,33h
    int 10h
    
    mov ah,09
    lea dx,msg
    int 21h
    
    
    
    
           
main endp

ret




