format ELF64
section '.text' executable

public main
extrn printf
extrn getpid

main:
  push rbp
  sub rsp, 20h
  movsd qword [rbp-8], first
  movsd qword [rbp-16], denom
  movsd qword [rbp-24], number
  mov rdi, print_format 
  mov rax, [rbp-8]
  movq xmm0, rax 
  call printf
  xor rbx, rbx
  add rsp, 20h
  leave
  ret

sum_of_proghretion:
  ;push rbp
  ;mov rbp rsp
  nop 
  nop
  nop

section '.data' writeable
msg db "Current process ID is %d.", 0x0A, 0
print_format db "%d", 0xA, 0
first DQ 2147483647
number DQ 10
denom DQ 0,5
