section .text:  

__start:  
auipc gp,0x1fc18 
addi gp,gp,28 
auipc sp,0x7fbff 
addi sp,sp,-12 
add s0,sp,zero 
jal ra,40001c <main> 

el:  
j 400018 <el> 

main:  
lui a0,0x10010 
addi sp,sp,-16 
li a1,7 
mv a0,a0 
sw ra,12(sp) 
jal ra,40004c <minv> 
lw ra,12(sp) 
lui a5,0x10010 
sw a0,28(a5) 
li a0,0 
addi sp,sp,16 
ret 

minv:  
lw a2,0(a0) 
li a4,1 
srai a5,a2,0x1f 
xor a2,a5,a2 
sub a2,a2,a5 
ble a1,a4,400090 <minv+0x44> 
slli a1,a1,0x2 
addi a4,a0,4 
add a0,a0,a1 
lw a5,0(a4) 
addi a4,a4,4 
srai a3,a5,0x1f 
xor a5,a3,a5 
sub a5,a5,a3 
ble a2,a5,40008c <minv+0x40> 
mv a2,a5 
bne a0,a4,400070 <minv+0x24> 
mv a0,a2 
ret 
