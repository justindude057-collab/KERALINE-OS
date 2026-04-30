int main() {
return 0;}

syscall:
int syscall() {
_asm_[mov [syscall], bx
cmp ah, bx
jne H

INT n

IRET
H:]
return 0;}

