format ELF64 executable 3

segment readable executable

entry main

main:
  sub rsp, 32; 
  ;movsd qword [rsp+24], first
  ;movsd qword [rsp+16], denom
  ;movsd qword [rsp+8], number 
  
  xor rdi, rdi
  mov rax, 60
  syscall

;function:
;  push rbp
;  mov rbp, rsp
;  movq qword xmm0, first
;  
;  add esp, 16
;  push xmm0
;  push printf_format
;  call printf
;  add esp 8
;  leave
;  ret
segment readable writable

msg   db 'Hello World!', 10, 0
first DQ 2048
number DQ 10
denom DQ 0,5
print_format: db "%f",0xA,0
