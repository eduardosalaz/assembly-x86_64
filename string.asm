; Q =  how do we print a string to the screen ?
; A =  with a function
; A label is a flag for the code to jump to it, the function will jump to the label
; the ret command serves to jump exactly after we called the label
; we need to isolate the labels code from the main in order to prevent infinite loops
; the 0 at the end of the STR label is to signalize the end of the String
; cmp is to check if the character is 0, jne is Jump if Not Equal to
; we are pushing everything to the stack to not mess with unwanted things
; when we hit the 0, we pop the stack and return to the main code after the function
; boot sectors are located usually between 0x7e00 and 0x7c00 addresses so we must
; specify where do we want to jump from
; org tells the machine to boot this code at the specific address of memory
[org 0x7c00]
mov si, STR
call printf

jmp $

printf:
  pusha
  str_loop:
    mov al, [si]
    cmp al, 0
    jne print_char
    popa
    ret

  print_char:
    mov ah, 0x0e
    int 0x10
    add si, 1
    jmp str_loop
  	
STR: db "Hello World", 0

times 510-($-$$) db 0
dw 0xaa55
