format elf64

SECTION '.text' executable

public func

func:
  push rbp
  mov rbp, rsp
  movss xmm2, xmm0
  movss xmm3, xmm0
startlp:
  cmp edi, 0                    ; if i <= 0:
  jle endlp                     ;     jump to end of loop
  mulss xmm3, xmm1
  addss xmm2, xmm3
  sub edi, 1                    ; i -= 1
  jmp startlp                   ; jump to start of the loop
endlp:
  movss xmm0, xmm2
  pop rbp
  ret
