	.file	"test.c"
	.intel_syntax noprefix
	.text
	.globl	func
	.type	func, @function
func:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	QWORD PTR -32[rbp], xmm1
	mov	DWORD PTR -36[rbp], edi
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	mov	DWORD PTR -12[rbp], 0
	jmp	.L2
.L3:
	movsd	xmm0, QWORD PTR -24[rbp]
	mulsd	xmm0, QWORD PTR -32[rbp]
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	addsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR -8[rbp], xmm0
	add	DWORD PTR -12[rbp], 1
.L2:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -36[rbp]
	jl	.L3
	movsd	xmm0, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	mov	DWORD PTR -28[rbp], 10
	mov	edx, DWORD PTR -28[rbp]
	movsd	xmm0, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	edi, edx
	movapd	xmm1, xmm0
	movq	xmm0, rax
	call	func
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	movsd	xmm0, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	2684354560
	.long	1098358412
	.align 8
.LC1:
	.long	1243822529
	.long	1069515643
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
