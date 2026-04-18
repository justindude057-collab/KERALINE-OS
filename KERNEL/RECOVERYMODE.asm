 
	section .text
global _start
_start:

mov bx, 0
mov ax, 1
cmp bx, ax
jne jmpstart
mov ah, 0x0E   ; teletype output function
mov al, "R"    ; character
int 0x10
mov ah, 0x0E   ; teletype output function
mov al, "E"    ; character
int 0x10
mov ah, 0x0E   ; teletype output function
mov al, "C"    ; character
int 0x10
mov ah, 0x0E   ; teletype output function
mov al, "O"    ; character
int 0x10
mov ah, 0x0E   ; teletype output function
mov al, "V"    ; character
int 0x10
mov ah, 0x0E   ; teletype output function
mov al, "E"    ; character
int 0x10
mov ah, 0x0E   ; teletype output function
mov al, "R"    ; character
int 0x10
mov ah, 0x0E   ; teletype output function
mov al, "Y"    ; character
int 0x10
	jmpstart:
