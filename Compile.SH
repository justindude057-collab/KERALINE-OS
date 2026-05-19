
apk add nasm
apk add gcc
nasm -f bin BOOTSECTION.asm -o BOOTSECTION.bin
cc Commandprompt.c -o Commandprompt.bin
