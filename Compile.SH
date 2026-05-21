echo =====================================
echo starting kernaline os compilation....
echo =====================================
echo installing kernaline os files please wait...
git clone https://github.com/justindude057-collab/KERALINE-OS.git
apk add unzip
apk add nasm
apk add gcc
echo preparing files for compileing.....
mv KERALINE-OS/* .
mv kernel/* .
echo comepleted preping files for compilation.

nasm -f bin BOOTSECTION.asm -o BOOTSECTION.bin
cc Diskmanage.h -o Diskmanage.bin
cc Diskmanage_code.c -o Diskmanage_code.bin
cc Intterupt.h -o Intterupt.bin
cc Interrupt_code.c -o Interrupt_code.bin
cc Memcall.h -o Memcall.bin
cc Memcall_code.c -o Memcall_code.bin
cc Panic.c -o Panic.bin
cc Process_scheduler.c -o Process_scheduler.bin
cc Krnlcall.c -o Krnlcall.bin
nasm -f bin VGAcontrol.asm -o VGAcontrol.bin
cc Commandprompt.c -o Commandprompt.bin

echo =====================================
echo sucessfully compiled Kernaline os code.
echo =====================================
echo now deleting unneeded os files....


rm BOOTSECTION.asm
rm Diskmanage.h
rm Diskmanage_code.c
rm Intterupt.h
rm Interrupt_code.c
rm Memcall.h
rm Memcall_code.c
rm Panic.c
rm Process_scheduler.c
rm Krnlcall.c
rm VGAcontrol.asm
rm Commandprompt.c

mv BOOTSECTION.bin /root/kernel
mv Diskmanage.bin /root/kernel
mv Diskmanage_code.bin /root/kernel
mv Intterupt.bin /root/kernel
mv Interrupt_code.bin /root/kernel
mv Memcall.bin /root/kernel
mv Memcall_code.bin /root/kernel
mv Panic.bin /root/kernel
mv Process_scheduler.bin /root/kernel
mv Krnlcall.bin /root/kernel
mv Commandprompt.bin /root/kernel

echo =====================================
echo sucessfully completed installation.
echo =====================================
