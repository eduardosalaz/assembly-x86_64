# assembly-x86_64
assembly code for x86_64

# tools
vim, nasm, qemu, g++

# things accomplished
- [X] boot and print X to the screen
- [X] boot and print "Hello World" to the screen
- [ ] boot and accept stdin

# very important note
the reason the magic number 0xaa55 is used to tell the machine to boot the current file is because the value
in binary of that number is 1010101001010101

This serves as a protection against drive or controller failures. Besides, it serves to identify endianness of the current system
