; boot sectors cant be bigger or smaller than exactly 512 bytes
; need to add 0s at the end
; the $ is the current location and $$ the start memory location
; last 2 bytes are the magic number that tells the PC that the current file
; is a boot sector
; 0x0e is the bios interrupt to move the cursor to the side
; 0x10 is the bios interrupt to print X to screen
; jmp $ is to jump to current location, creating an infinite loop

mov ah, 0x0e
mov al, 'X'
int 0x10
jmp $
times 510-($-$$) db 0
dw 0xaa55
