; mov destination, source/value
mov eax, 13
add eax, 10
; eax register is 23
push ax
mov ax, 0xe4
; do something
pop ax
; the value of ax is the same as before it was pushed to the stack
push ax
; do stuff
push bx
; do stuff
pop bx
; bx is over ax in the stack, you have to pop LIFO
pop ax
; 0x0e is a BIOS interrupt to move the cursor next to the thing you printed
; 0x10 is a BIOS interrupt that prints stuff to the screen
; in vim you must type %!xxd to enter hex mode to read the binaries
