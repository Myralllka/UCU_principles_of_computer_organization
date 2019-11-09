format elf64
SECTION '.text'

public func

func:
  ; arguments: during the calling convension are in stack
  push rbp
  mov rbp, rsp
  ; arguments are in rdi xmm1, xmm0 (from right to left)
  ; rbp-0x4(4)    i
  ; rbp-0x8(8)    result (to xmm0)
  ; rbp-0xc(12)   current
  ; rbp-0x14(20)  denum (2d argument, now in xmm1)
  ; rbp-0x18(24)  start (1st argument, now in xmm0)
  mov dword [rbp-0x4], edi      ; i = num
  movss dword [rbp-0x18], xmm0  ; save start
  movss dword [rbp-0x14], xmm1  ; save denum
  movss xmm0, dword[rbp-0x18]   ; load start
  movss dword [rbp-0x8], xmm0   ; result = start
  movss xmm0, dword[rbp-0x18]   ; load start
  movss dword [rbp-0xc], xmm0   ; current = start
startlp:
  mov eax, dword [rbp-0x4]      ; eax = i
  cmp eax, 0                    ; if i <= 0:
  jle endlp                     ;     jump to end of loop
  movss xmm0, dword[rbp-0xc]    ; xmm0 = current
  movss xmm1, dword[rbp-0x14]   ; xmm1 = denum
  mulss xmm0, xmm1              ; current = current * denum
  movss dword [rbp-0xc], xmm0   ; save current
  movss xmm0, dword [rbp-0x8]   ; xmm0 = result
  movss xmm1, dword [rbp-0xc]   ; xmm1 = current
  addss xmm0, xmm1              ; result = result + current
  movss dword [rbp-0x8], xmm0   ; save result
  mov eax, dword [rbp-0x4]      ; eax = i
  sub eax, 1                    ; i -= 1
  mov dword [rbp-0x4], eax      ; save i
  jmp startlp                   ; jump to start of the loop
endlp:
  movss xmm0, dword [rbp-0x8]    ; res = result
  ; return the state of stak and return the func, result in xmm0
  pop rbp
  ret


  
