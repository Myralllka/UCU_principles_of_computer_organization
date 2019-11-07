format elf64
section '.text' executable

public main
extrn printf
extrn getpid

main:
  push rbp
  movsd xmm0, qword [fl]
  lea rdi, [msg]
  xor rax, rax
  call printf
  xor eax, eax
  pop rbp
  ret

section '.data' writeable
msg Dq "%f", 0x0A, 0
fl dq 1.1
vdouble2 dq 567.1
vdouble3 dq 0.0
