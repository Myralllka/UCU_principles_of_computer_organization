format elf64
section '.text' executable

add_func:
  push rbp
  sub esp, 20h
  movsd xmm0, []

