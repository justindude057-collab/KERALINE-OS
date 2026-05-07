#include "intterupt.h"
#include "memcall.h"
#include "disk.h"
int main(){
return 0;}
#ifndef Krnlcall_H  
#define Krnlcall_H

int diskstat = 0; //write is defualt

void memcall()
{memcall();}

void intterupt(){
intt();}

int diskacess;
void disk(){
if (diskstat == 0){
diskwrite();}
if (diskstat == 1){
diskread();}
}}

#endif
