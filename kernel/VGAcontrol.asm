mov ax, 0xb800
mov es, ax
xor di, di
mov ax, 0x1f00
mov cx, 2000
rep stosw
