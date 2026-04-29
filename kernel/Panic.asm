mov bp, 0
mov sp, 1
cmp sp, bp
jne A

mov ax, 0xb800
mov es, ax
xor di, di
mov ax, 0x1f00
mov cx, 2000
rep stosw

mov ah, 0x0e
mov al, 'something went wrong.'
int 0x10
A:
