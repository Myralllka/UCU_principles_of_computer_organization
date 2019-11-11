format elf64
section '.text' executable

public main
extrn printf
extrn func
extrn getpid

main:
  push rbp
  movss xmm0, dword [first]
  movss xmm1, dword [denum]
  mov edi, dword [num]
  call func
  cvtss2sd xmm0, xmm0 ; convert from float to double (printf need double)
  lea edi, [newms]
  mov eax, 1 ; number of floats
  ;xor eax, eax
  call printf
  xor eax, eax
  pop rbp
  ret

section '.data' writeable
newms db "result is %f", 10, 0
first dd 100.0
denum dd 0.1
num dd 3
