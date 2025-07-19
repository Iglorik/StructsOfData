	.file	"Vector.cpp"
	.text
	.section	.text._ZNSt11char_traitsIcE2ltERKcS2_,"axG",@progbits,_ZNSt11char_traitsIcE2ltERKcS2_,comdat
	.weak	_ZNSt11char_traitsIcE2ltERKcS2_
	.type	_ZNSt11char_traitsIcE2ltERKcS2_, @function
_ZNSt11char_traitsIcE2ltERKcS2_:
.LFB129:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	setb	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	_ZNSt11char_traitsIcE2ltERKcS2_, .-_ZNSt11char_traitsIcE2ltERKcS2_
	.section	.text._ZNSt11char_traitsIcE7compareEPKcS2_m,"axG",@progbits,_ZNSt11char_traitsIcE7compareEPKcS2_m,comdat
	.weak	_ZNSt11char_traitsIcE7compareEPKcS2_m
	.type	_ZNSt11char_traitsIcE7compareEPKcS2_m, @function
_ZNSt11char_traitsIcE7compareEPKcS2_m:
.LFB130:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movl	$0, %eax
	testb	%al, %al
	je	.L7
	movq	$0, -8(%rbp)
	jmp	.L8
.L11:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE2ltERKcS2_
	testb	%al, %al
	je	.L9
	movl	$-1, %eax
	jmp	.L5
.L9:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE2ltERKcS2_
	testb	%al, %al
	je	.L10
	movl	$1, %eax
	jmp	.L5
.L10:
	addq	$1, -8(%rbp)
.L8:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L11
	movl	$0, %eax
	jmp	.L5
.L7:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	nop
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	_ZNSt11char_traitsIcE7compareEPKcS2_m, .-_ZNSt11char_traitsIcE7compareEPKcS2_m
	.section	.rodata
	.align 8
.LC2:
	.string	"The coef must be greater than 1"
	.section	.text._ZN6VectorIiEC2EPKimf,"axG",@progbits,_ZN6VectorIiEC5EPKimf,comdat
	.align 2
	.weak	_ZN6VectorIiEC2EPKimf
	.type	_ZN6VectorIiEC2EPKimf, @function
_ZN6VectorIiEC2EPKimf:
.LFB1997:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1997
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movss	%xmm0, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movss	.LC1(%rip), %xmm0
	comiss	-60(%rbp), %xmm0
	jb	.L27
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB0:
	call	_ZNSt16invalid_argumentC1EPKc@PLT
.LEHE0:
	movq	_ZNSt16invalid_argumentD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt16invalid_argument(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB1:
	call	__cxa_throw@PLT
.L27:
	cmpq	$0, -56(%rbp)
	je	.L15
	movq	-56(%rbp), %rax
	jmp	.L16
.L15:
	movl	$1, %eax
.L16:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L17
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE1:
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZSt4copyIPKiPiET0_T_S4_S3_
.LEHE2:
	jmp	.L28
.L17:
.LEHB3:
	call	__cxa_throw_bad_array_new_length@PLT
.L28:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, 16(%rax)
	jmp	.L29
.L23:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE3:
.L24:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L21:
.LEHB4:
	call	__cxa_rethrow@PLT
.LEHE4:
.L25:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L29:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1997:
	.section	.gcc_except_table._ZN6VectorIiEC2EPKimf,"aG",@progbits,_ZN6VectorIiEC5EPKimf,comdat
	.align 4
.LLSDA1997:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT1997-.LLSDATTD1997
.LLSDATTD1997:
	.byte	0x1
	.uleb128 .LLSDACSE1997-.LLSDACSB1997
.LLSDACSB1997:
	.uleb128 .LEHB0-.LFB1997
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L23-.LFB1997
	.uleb128 0
	.uleb128 .LEHB1-.LFB1997
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB1997
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L24-.LFB1997
	.uleb128 0x1
	.uleb128 .LEHB3-.LFB1997
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1997
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L25-.LFB1997
	.uleb128 0
	.uleb128 .LEHB5-.LFB1997
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1997:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT1997:
	.section	.text._ZN6VectorIiEC2EPKimf,"axG",@progbits,_ZN6VectorIiEC5EPKimf,comdat
	.size	_ZN6VectorIiEC2EPKimf, .-_ZN6VectorIiEC2EPKimf
	.weak	_ZN6VectorIiEC1EPKimf
	.set	_ZN6VectorIiEC1EPKimf,_ZN6VectorIiEC2EPKimf
	.section	.text._ZN6VectorIiEC2ERKS0_,"axG",@progbits,_ZN6VectorIiEC5ERKS0_,comdat
	.align 2
	.weak	_ZN6VectorIiEC2ERKS0_
	.type	_ZN6VectorIiEC2ERKS0_, @function
_ZN6VectorIiEC2ERKS0_:
.LFB2000:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2000
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L31
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	movq	%rax, %rdi
.LEHB6:
	call	_Znam@PLT
.LEHE6:
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE7:
	jmp	.L38
.L31:
.LEHB8:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE8:
.L38:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 16(%rax)
	jmp	.L39
.L36:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L34
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L34:
.LEHB9:
	call	__cxa_rethrow@PLT
.LEHE9:
.L37:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2000:
	.section	.gcc_except_table._ZN6VectorIiEC2ERKS0_,"aG",@progbits,_ZN6VectorIiEC5ERKS0_,comdat
	.align 4
.LLSDA2000:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2000-.LLSDATTD2000
.LLSDATTD2000:
	.byte	0x1
	.uleb128 .LLSDACSE2000-.LLSDACSB2000
.LLSDACSB2000:
	.uleb128 .LEHB6-.LFB2000
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2000
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L36-.LFB2000
	.uleb128 0x1
	.uleb128 .LEHB8-.LFB2000
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2000
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L37-.LFB2000
	.uleb128 0
	.uleb128 .LEHB10-.LFB2000
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2000:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2000:
	.section	.text._ZN6VectorIiEC2ERKS0_,"axG",@progbits,_ZN6VectorIiEC5ERKS0_,comdat
	.size	_ZN6VectorIiEC2ERKS0_, .-_ZN6VectorIiEC2ERKS0_
	.weak	_ZN6VectorIiEC1ERKS0_
	.set	_ZN6VectorIiEC1ERKS0_,_ZN6VectorIiEC2ERKS0_
	.section	.text._ZN6VectorIiEaSERKS0_,"axG",@progbits,_ZN6VectorIiEaSERKS0_,comdat
	.align 2
	.weak	_ZN6VectorIiEaSERKS0_
	.type	_ZN6VectorIiEaSERKS0_, @function
_ZN6VectorIiEaSERKS0_:
.LFB2002:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2002
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L41
	movq	-40(%rbp), %rax
	jmp	.L52
.L41:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L43
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	movq	%rax, %rdi
.LEHB11:
	call	_Znam@PLT
.LEHE11:
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE12:
	jmp	.L51
.L43:
.LEHB13:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE13:
.L51:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L45:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-40(%rbp), %rax
	jmp	.L52
.L49:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L47
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L47:
.LEHB14:
	call	__cxa_rethrow@PLT
.LEHE14:
.L50:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
.L52:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2002:
	.section	.gcc_except_table._ZN6VectorIiEaSERKS0_,"aG",@progbits,_ZN6VectorIiEaSERKS0_,comdat
	.align 4
.LLSDA2002:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2002-.LLSDATTD2002
.LLSDATTD2002:
	.byte	0x1
	.uleb128 .LLSDACSE2002-.LLSDACSB2002
.LLSDACSB2002:
	.uleb128 .LEHB11-.LFB2002
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB2002
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L49-.LFB2002
	.uleb128 0x1
	.uleb128 .LEHB13-.LFB2002
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB2002
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L50-.LFB2002
	.uleb128 0
	.uleb128 .LEHB15-.LFB2002
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE2002:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2002:
	.section	.text._ZN6VectorIiEaSERKS0_,"axG",@progbits,_ZN6VectorIiEaSERKS0_,comdat
	.size	_ZN6VectorIiEaSERKS0_, .-_ZN6VectorIiEaSERKS0_
	.section	.text._ZN6VectorIiEC2EOS0_,"axG",@progbits,_ZN6VectorIiEC5EOS0_,comdat
	.align 2
	.weak	_ZN6VectorIiEC2EOS0_
	.type	_ZN6VectorIiEC2EOS0_, @function
_ZN6VectorIiEC2EOS0_:
.LFB2004:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2004:
	.size	_ZN6VectorIiEC2EOS0_, .-_ZN6VectorIiEC2EOS0_
	.weak	_ZN6VectorIiEC1EOS0_
	.set	_ZN6VectorIiEC1EOS0_,_ZN6VectorIiEC2EOS0_
	.section	.text._ZN6VectorIiEaSEOS0_,"axG",@progbits,_ZN6VectorIiEaSEOS0_,comdat
	.align 2
	.weak	_ZN6VectorIiEaSEOS0_
	.type	_ZN6VectorIiEaSEOS0_, @function
_ZN6VectorIiEaSEOS0_:
.LFB2006:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L55
	movq	-8(%rbp), %rax
	jmp	.L56
.L55:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L57:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2006:
	.size	_ZN6VectorIiEaSEOS0_, .-_ZN6VectorIiEaSEOS0_
	.section	.text._ZN6VectorIiED2Ev,"axG",@progbits,_ZN6VectorIiED5Ev,comdat
	.align 2
	.weak	_ZN6VectorIiED2Ev
	.type	_ZN6VectorIiED2Ev, @function
_ZN6VectorIiED2Ev:
.LFB2008:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L60:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2008:
	.size	_ZN6VectorIiED2Ev, .-_ZN6VectorIiED2Ev
	.weak	_ZN6VectorIiED1Ev
	.set	_ZN6VectorIiED1Ev,_ZN6VectorIiED2Ev
	.section	.text._ZN6VectorIiE8pushBackERKi,"axG",@progbits,_ZN6VectorIiE8pushBackERKi,comdat
	.align 2
	.weak	_ZN6VectorIiE8pushBackERKi
	.type	_ZN6VectorIiE8pushBackERKi, @function
_ZN6VectorIiE8pushBackERKi:
.LFB2010:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2010
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN6VectorIiE13sizeExpansionEm
	testb	%al, %al
	je	.L62
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L63
	salq	$2, %rax
	movq	%rax, %rdi
.LEHB16:
	call	_Znam@PLT
.LEHE16:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE17:
	jmp	.L71
.L63:
.LEHB18:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE18:
.L71:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L65:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L62:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L72
.L69:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L67
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L67:
.LEHB19:
	call	__cxa_rethrow@PLT
.LEHE19:
.L70:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB20:
	call	_Unwind_Resume@PLT
.LEHE20:
.L72:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2010:
	.section	.gcc_except_table._ZN6VectorIiE8pushBackERKi,"aG",@progbits,_ZN6VectorIiE8pushBackERKi,comdat
	.align 4
.LLSDA2010:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2010-.LLSDATTD2010
.LLSDATTD2010:
	.byte	0x1
	.uleb128 .LLSDACSE2010-.LLSDACSB2010
.LLSDACSB2010:
	.uleb128 .LEHB16-.LFB2010
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB2010
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L69-.LFB2010
	.uleb128 0x1
	.uleb128 .LEHB18-.LFB2010
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB2010
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L70-.LFB2010
	.uleb128 0
	.uleb128 .LEHB20-.LFB2010
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE2010:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2010:
	.section	.text._ZN6VectorIiE8pushBackERKi,"axG",@progbits,_ZN6VectorIiE8pushBackERKi,comdat
	.size	_ZN6VectorIiE8pushBackERKi, .-_ZN6VectorIiE8pushBackERKi
	.section	.text._ZN6VectorIiE9pushFrontERKi,"axG",@progbits,_ZN6VectorIiE9pushFrontERKi,comdat
	.align 2
	.weak	_ZN6VectorIiE9pushFrontERKi
	.type	_ZN6VectorIiE9pushFrontERKi, @function
_ZN6VectorIiE9pushFrontERKi:
.LFB2011:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2011
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN6VectorIiE13sizeExpansionEm
	testb	%al, %al
	je	.L74
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L75
	salq	$2, %rax
	movq	%rax, %rdi
.LEHB21:
	call	_Znam@PLT
.LEHE21:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB22:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE22:
	jmp	.L83
.L75:
.LEHB23:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE23:
.L83:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L77
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L77:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L74:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L84
.L81:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L79
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L79:
.LEHB24:
	call	__cxa_rethrow@PLT
.LEHE24:
.L82:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB25:
	call	_Unwind_Resume@PLT
.LEHE25:
.L84:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2011:
	.section	.gcc_except_table._ZN6VectorIiE9pushFrontERKi,"aG",@progbits,_ZN6VectorIiE9pushFrontERKi,comdat
	.align 4
.LLSDA2011:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2011-.LLSDATTD2011
.LLSDATTD2011:
	.byte	0x1
	.uleb128 .LLSDACSE2011-.LLSDACSB2011
.LLSDACSB2011:
	.uleb128 .LEHB21-.LFB2011
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB2011
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L81-.LFB2011
	.uleb128 0x1
	.uleb128 .LEHB23-.LFB2011
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB2011
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L82-.LFB2011
	.uleb128 0
	.uleb128 .LEHB25-.LFB2011
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE2011:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2011:
	.section	.text._ZN6VectorIiE9pushFrontERKi,"axG",@progbits,_ZN6VectorIiE9pushFrontERKi,comdat
	.size	_ZN6VectorIiE9pushFrontERKi, .-_ZN6VectorIiE9pushFrontERKi
	.section	.rodata
.LC3:
	.string	"Out of range of vector"
	.section	.text._ZN6VectorIiE6insertERKim,"axG",@progbits,_ZN6VectorIiE6insertERKim,comdat
	.align 2
	.weak	_ZN6VectorIiE6insertERKim
	.type	_ZN6VectorIiE6insertERKim, @function
_ZN6VectorIiE6insertERKim:
.LFB2012:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2012
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L86
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB26:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE26:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB27:
	call	__cxa_throw@PLT
.L86:
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN6VectorIiE13sizeExpansionEm
	testb	%al, %al
	je	.L87
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L88
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE27:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB28:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE28:
	jmp	.L103
.L88:
.LEHB29:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE29:
.L103:
	movq	-56(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB30:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE30:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L90:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L91
.L87:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB31:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE31:
.L91:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L104
.L98:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB32:
	call	_Unwind_Resume@PLT
.LEHE32:
.L99:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L94
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L94:
.LEHB33:
	call	__cxa_rethrow@PLT
.LEHE33:
.L100:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB34:
	call	_Unwind_Resume@PLT
.LEHE34:
.L101:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.LEHB35:
	call	__cxa_rethrow@PLT
.LEHE35:
.L102:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB36:
	call	_Unwind_Resume@PLT
.LEHE36:
.L104:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2012:
	.section	.gcc_except_table._ZN6VectorIiE6insertERKim,"aG",@progbits,_ZN6VectorIiE6insertERKim,comdat
	.align 4
.LLSDA2012:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2012-.LLSDATTD2012
.LLSDATTD2012:
	.byte	0x1
	.uleb128 .LLSDACSE2012-.LLSDACSB2012
.LLSDACSB2012:
	.uleb128 .LEHB26-.LFB2012
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L98-.LFB2012
	.uleb128 0
	.uleb128 .LEHB27-.LFB2012
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB2012
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L99-.LFB2012
	.uleb128 0x1
	.uleb128 .LEHB29-.LFB2012
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB2012
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L99-.LFB2012
	.uleb128 0x1
	.uleb128 .LEHB31-.LFB2012
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L101-.LFB2012
	.uleb128 0x1
	.uleb128 .LEHB32-.LFB2012
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB2012
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L100-.LFB2012
	.uleb128 0
	.uleb128 .LEHB34-.LFB2012
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB2012
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L102-.LFB2012
	.uleb128 0
	.uleb128 .LEHB36-.LFB2012
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE2012:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2012:
	.section	.text._ZN6VectorIiE6insertERKim,"axG",@progbits,_ZN6VectorIiE6insertERKim,comdat
	.size	_ZN6VectorIiE6insertERKim, .-_ZN6VectorIiE6insertERKim
	.section	.text._ZN6VectorIiE6insertEPKimm,"axG",@progbits,_ZN6VectorIiE6insertEPKimm,comdat
	.align 2
	.weak	_ZN6VectorIiE6insertEPKimm
	.type	_ZN6VectorIiE6insertEPKimm, @function
_ZN6VectorIiE6insertEPKimm:
.LFB2013:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2013
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L106
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB37:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE37:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB38:
	call	__cxa_throw@PLT
.L106:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorIiE13sizeExpansionEm
	testb	%al, %al
	je	.L107
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L108
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE38:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB39:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE39:
	jmp	.L123
.L108:
.LEHB40:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE40:
.L123:
	movq	-64(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB41:
	call	_ZSt4copyIPKiPiET0_T_S4_S3_
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE41:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L110:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L111
.L107:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB42:
	call	_ZSt4copyIPKiPiET0_T_S4_S3_
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE42:
.L111:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L124
.L118:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB43:
	call	_Unwind_Resume@PLT
.LEHE43:
.L119:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L114
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L114:
.LEHB44:
	call	__cxa_rethrow@PLT
.LEHE44:
.L120:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB45:
	call	_Unwind_Resume@PLT
.LEHE45:
.L121:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.LEHB46:
	call	__cxa_rethrow@PLT
.LEHE46:
.L122:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB47:
	call	_Unwind_Resume@PLT
.LEHE47:
.L124:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2013:
	.section	.gcc_except_table._ZN6VectorIiE6insertEPKimm,"aG",@progbits,_ZN6VectorIiE6insertEPKimm,comdat
	.align 4
.LLSDA2013:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2013-.LLSDATTD2013
.LLSDATTD2013:
	.byte	0x1
	.uleb128 .LLSDACSE2013-.LLSDACSB2013
.LLSDACSB2013:
	.uleb128 .LEHB37-.LFB2013
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L118-.LFB2013
	.uleb128 0
	.uleb128 .LEHB38-.LFB2013
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB2013
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L119-.LFB2013
	.uleb128 0x1
	.uleb128 .LEHB40-.LFB2013
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB2013
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L119-.LFB2013
	.uleb128 0x1
	.uleb128 .LEHB42-.LFB2013
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L121-.LFB2013
	.uleb128 0x1
	.uleb128 .LEHB43-.LFB2013
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB2013
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L120-.LFB2013
	.uleb128 0
	.uleb128 .LEHB45-.LFB2013
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB46-.LFB2013
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L122-.LFB2013
	.uleb128 0
	.uleb128 .LEHB47-.LFB2013
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE2013:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2013:
	.section	.text._ZN6VectorIiE6insertEPKimm,"axG",@progbits,_ZN6VectorIiE6insertEPKimm,comdat
	.size	_ZN6VectorIiE6insertEPKimm, .-_ZN6VectorIiE6insertEPKimm
	.section	.text._ZN6VectorIiE6insertERKS0_m,"axG",@progbits,_ZN6VectorIiE6insertERKS0_m,comdat
	.align 2
	.weak	_ZN6VectorIiE6insertERKS0_m
	.type	_ZN6VectorIiE6insertERKS0_m, @function
_ZN6VectorIiE6insertERKS0_m:
.LFB2014:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2014
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L126
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB48:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE48:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB49:
	call	__cxa_throw@PLT
.L126:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorIiE13sizeExpansionEm
	testb	%al, %al
	je	.L127
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L128
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE49:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB50:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE50:
	jmp	.L143
.L128:
.LEHB51:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE51:
.L143:
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %r12
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB52:
	call	_ZNK6VectorIiEixEm
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK6VectorIiEixEm
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKiPiET0_T_S4_S3_
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE52:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L130:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L131
.L127:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %r12
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB53:
	call	_ZNK6VectorIiEixEm
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK6VectorIiEixEm
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKiPiET0_T_S4_S3_
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE53:
.L131:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L144
.L138:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB54:
	call	_Unwind_Resume@PLT
.LEHE54:
.L139:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L134
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L134:
.LEHB55:
	call	__cxa_rethrow@PLT
.LEHE55:
.L140:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB56:
	call	_Unwind_Resume@PLT
.LEHE56:
.L141:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.LEHB57:
	call	__cxa_rethrow@PLT
.LEHE57:
.L142:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB58:
	call	_Unwind_Resume@PLT
.LEHE58:
.L144:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2014:
	.section	.gcc_except_table._ZN6VectorIiE6insertERKS0_m,"aG",@progbits,_ZN6VectorIiE6insertERKS0_m,comdat
	.align 4
.LLSDA2014:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2014-.LLSDATTD2014
.LLSDATTD2014:
	.byte	0x1
	.uleb128 .LLSDACSE2014-.LLSDACSB2014
.LLSDACSB2014:
	.uleb128 .LEHB48-.LFB2014
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L138-.LFB2014
	.uleb128 0
	.uleb128 .LEHB49-.LFB2014
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LFB2014
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L139-.LFB2014
	.uleb128 0x1
	.uleb128 .LEHB51-.LFB2014
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB2014
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L139-.LFB2014
	.uleb128 0x1
	.uleb128 .LEHB53-.LFB2014
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L141-.LFB2014
	.uleb128 0x1
	.uleb128 .LEHB54-.LFB2014
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB2014
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L140-.LFB2014
	.uleb128 0
	.uleb128 .LEHB56-.LFB2014
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB2014
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L142-.LFB2014
	.uleb128 0
	.uleb128 .LEHB58-.LFB2014
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
.LLSDACSE2014:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2014:
	.section	.text._ZN6VectorIiE6insertERKS0_m,"axG",@progbits,_ZN6VectorIiE6insertERKS0_m,comdat
	.size	_ZN6VectorIiE6insertERKS0_m, .-_ZN6VectorIiE6insertERKS0_m
	.section	.rodata
.LC4:
	.string	"Vector is empty already!"
	.section	.text._ZN6VectorIiE7popBackEv,"axG",@progbits,_ZN6VectorIiE7popBackEv,comdat
	.align 2
	.weak	_ZN6VectorIiE7popBackEv
	.type	_ZN6VectorIiE7popBackEv, @function
_ZN6VectorIiE7popBackEv:
.LFB2015:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2015
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L146
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB59:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE59:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB60:
	call	__cxa_throw@PLT
.L146:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L149
.L148:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE60:
.L149:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2015:
	.section	.gcc_except_table._ZN6VectorIiE7popBackEv,"aG",@progbits,_ZN6VectorIiE7popBackEv,comdat
.LLSDA2015:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2015-.LLSDACSB2015
.LLSDACSB2015:
	.uleb128 .LEHB59-.LFB2015
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L148-.LFB2015
	.uleb128 0
	.uleb128 .LEHB60-.LFB2015
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
.LLSDACSE2015:
	.section	.text._ZN6VectorIiE7popBackEv,"axG",@progbits,_ZN6VectorIiE7popBackEv,comdat
	.size	_ZN6VectorIiE7popBackEv, .-_ZN6VectorIiE7popBackEv
	.section	.text._ZN6VectorIiE8popFrontEv,"axG",@progbits,_ZN6VectorIiE8popFrontEv,comdat
	.align 2
	.weak	_ZN6VectorIiE8popFrontEv
	.type	_ZN6VectorIiE8popFrontEv, @function
_ZN6VectorIiE8popFrontEv:
.LFB2016:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2016
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L151
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB61:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE61:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB62:
	call	__cxa_throw@PLT
.L151:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L152
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE62:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %rsi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	4(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
.LEHB63:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE63:
	jmp	.L162
.L152:
.LEHB64:
	call	__cxa_throw_bad_array_new_length@PLT
.L162:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L154
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L154:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L163
.L159:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE64:
.L160:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L157
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L157:
.LEHB65:
	call	__cxa_rethrow@PLT
.LEHE65:
.L161:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB66:
	call	_Unwind_Resume@PLT
.LEHE66:
.L163:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2016:
	.section	.gcc_except_table._ZN6VectorIiE8popFrontEv,"aG",@progbits,_ZN6VectorIiE8popFrontEv,comdat
	.align 4
.LLSDA2016:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2016-.LLSDATTD2016
.LLSDATTD2016:
	.byte	0x1
	.uleb128 .LLSDACSE2016-.LLSDACSB2016
.LLSDACSB2016:
	.uleb128 .LEHB61-.LFB2016
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L159-.LFB2016
	.uleb128 0
	.uleb128 .LEHB62-.LFB2016
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB63-.LFB2016
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L160-.LFB2016
	.uleb128 0x1
	.uleb128 .LEHB64-.LFB2016
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB65-.LFB2016
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L161-.LFB2016
	.uleb128 0
	.uleb128 .LEHB66-.LFB2016
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
.LLSDACSE2016:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2016:
	.section	.text._ZN6VectorIiE8popFrontEv,"axG",@progbits,_ZN6VectorIiE8popFrontEv,comdat
	.size	_ZN6VectorIiE8popFrontEv, .-_ZN6VectorIiE8popFrontEv
	.section	.rodata
	.align 8
.LC5:
	.string	"Position is out of range of vector"
	.section	.text._ZN6VectorIiE5eraseEmm,"axG",@progbits,_ZN6VectorIiE5eraseEmm,comdat
	.align 2
	.weak	_ZN6VectorIiE5eraseEmm
	.type	_ZN6VectorIiE5eraseEmm, @function
_ZN6VectorIiE5eraseEmm:
.LFB2017:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2017
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L165
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB67:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE67:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB68:
	call	__cxa_throw@PLT
.L165:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	cmpq	%rdx, %rax
	jnb	.L166
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L164
.L166:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L168
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE68:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB69:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE69:
	jmp	.L178
.L168:
.LEHB70:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE70:
.L178:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	addq	%rdi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB71:
	call	_ZSt4copyIPiS0_ET0_T_S2_S1_
.LEHE71:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L170
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L170:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L164
.L175:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB72:
	call	_Unwind_Resume@PLT
.LEHE72:
.L176:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L173
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L173:
.LEHB73:
	call	__cxa_rethrow@PLT
.LEHE73:
.L177:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB74:
	call	_Unwind_Resume@PLT
.LEHE74:
.L164:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2017:
	.section	.gcc_except_table._ZN6VectorIiE5eraseEmm,"aG",@progbits,_ZN6VectorIiE5eraseEmm,comdat
	.align 4
.LLSDA2017:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2017-.LLSDATTD2017
.LLSDATTD2017:
	.byte	0x1
	.uleb128 .LLSDACSE2017-.LLSDACSB2017
.LLSDACSB2017:
	.uleb128 .LEHB67-.LFB2017
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L175-.LFB2017
	.uleb128 0
	.uleb128 .LEHB68-.LFB2017
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB69-.LFB2017
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L176-.LFB2017
	.uleb128 0x1
	.uleb128 .LEHB70-.LFB2017
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB71-.LFB2017
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L176-.LFB2017
	.uleb128 0x1
	.uleb128 .LEHB72-.LFB2017
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB73-.LFB2017
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L177-.LFB2017
	.uleb128 0
	.uleb128 .LEHB74-.LFB2017
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
.LLSDACSE2017:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2017:
	.section	.text._ZN6VectorIiE5eraseEmm,"axG",@progbits,_ZN6VectorIiE5eraseEmm,comdat
	.size	_ZN6VectorIiE5eraseEmm, .-_ZN6VectorIiE5eraseEmm
	.section	.text._ZN6VectorIiE12eraseBetweenEmm,"axG",@progbits,_ZN6VectorIiE12eraseBetweenEmm,comdat
	.align 2
	.weak	_ZN6VectorIiE12eraseBetweenEmm
	.type	_ZN6VectorIiE12eraseBetweenEmm, @function
_ZN6VectorIiE12eraseBetweenEmm:
.LFB2018:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorIiE5eraseEmm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2018:
	.size	_ZN6VectorIiE12eraseBetweenEmm, .-_ZN6VectorIiE12eraseBetweenEmm
	.section	.text._ZNK6VectorIiE4sizeEv,"axG",@progbits,_ZNK6VectorIiE4sizeEv,comdat
	.align 2
	.weak	_ZNK6VectorIiE4sizeEv
	.type	_ZNK6VectorIiE4sizeEv, @function
_ZNK6VectorIiE4sizeEv:
.LFB2019:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2019:
	.size	_ZNK6VectorIiE4sizeEv, .-_ZNK6VectorIiE4sizeEv
	.section	.text._ZNK6VectorIiE8capacityEv,"axG",@progbits,_ZNK6VectorIiE8capacityEv,comdat
	.align 2
	.weak	_ZNK6VectorIiE8capacityEv
	.type	_ZNK6VectorIiE8capacityEv, @function
_ZNK6VectorIiE8capacityEv:
.LFB2020:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2020:
	.size	_ZNK6VectorIiE8capacityEv, .-_ZNK6VectorIiE8capacityEv
	.section	.text._ZNK6VectorIiE10loadFactorEv,"axG",@progbits,_ZNK6VectorIiE10loadFactorEv,comdat
	.align 2
	.weak	_ZNK6VectorIiE10loadFactorEv
	.type	_ZNK6VectorIiE10loadFactorEv, @function
_ZNK6VectorIiE10loadFactorEv:
.LFB2021:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	js	.L185
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L186
.L185:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L186:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	js	.L187
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	jmp	.L188
.L187:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
.L188:
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2021:
	.size	_ZNK6VectorIiE10loadFactorEv, .-_ZNK6VectorIiE10loadFactorEv
	.section	.rodata
.LC6:
	.string	"Index out of range"
	.section	.text._ZN6VectorIiEixEm,"axG",@progbits,_ZN6VectorIiEixEm,comdat
	.align 2
	.weak	_ZN6VectorIiEixEm
	.type	_ZN6VectorIiEixEm, @function
_ZN6VectorIiEixEm:
.LFB2022:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2022
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L191
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB75:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE75:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB76:
	call	__cxa_throw@PLT
.L191:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	jmp	.L195
.L194:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE76:
.L195:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2022:
	.section	.gcc_except_table._ZN6VectorIiEixEm,"aG",@progbits,_ZN6VectorIiEixEm,comdat
.LLSDA2022:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2022-.LLSDACSB2022
.LLSDACSB2022:
	.uleb128 .LEHB75-.LFB2022
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L194-.LFB2022
	.uleb128 0
	.uleb128 .LEHB76-.LFB2022
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
.LLSDACSE2022:
	.section	.text._ZN6VectorIiEixEm,"axG",@progbits,_ZN6VectorIiEixEm,comdat
	.size	_ZN6VectorIiEixEm, .-_ZN6VectorIiEixEm
	.section	.text._ZNK6VectorIiEixEm,"axG",@progbits,_ZNK6VectorIiEixEm,comdat
	.align 2
	.weak	_ZNK6VectorIiEixEm
	.type	_ZNK6VectorIiEixEm, @function
_ZNK6VectorIiEixEm:
.LFB2023:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2023
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L197
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L197
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB77:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE77:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB78:
	call	__cxa_throw@PLT
.L197:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	jmp	.L201
.L200:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE78:
.L201:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2023:
	.section	.gcc_except_table._ZNK6VectorIiEixEm,"aG",@progbits,_ZNK6VectorIiEixEm,comdat
.LLSDA2023:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2023-.LLSDACSB2023
.LLSDACSB2023:
	.uleb128 .LEHB77-.LFB2023
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L200-.LFB2023
	.uleb128 0
	.uleb128 .LEHB78-.LFB2023
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
.LLSDACSE2023:
	.section	.text._ZNK6VectorIiEixEm,"axG",@progbits,_ZNK6VectorIiEixEm,comdat
	.size	_ZNK6VectorIiEixEm, .-_ZNK6VectorIiEixEm
	.section	.text._ZNK6VectorIiE4findERKi,"axG",@progbits,_ZNK6VectorIiE4findERKi,comdat
	.align 2
	.weak	_ZNK6VectorIiE4findERKi
	.type	_ZNK6VectorIiE4findERKi, @function
_ZNK6VectorIiE4findERKi:
.LFB2024:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L203
.L206:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L204
	movl	-4(%rbp), %eax
	cltq
	jmp	.L205
.L204:
	addl	$1, -4(%rbp)
.L203:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L206
	movq	$-1, %rax
.L205:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2024:
	.size	_ZNK6VectorIiE4findERKi, .-_ZNK6VectorIiE4findERKi
	.section	.text._ZN6VectorIiE7reserveEm,"axG",@progbits,_ZN6VectorIiE7reserveEm,comdat
	.align 2
	.weak	_ZN6VectorIiE7reserveEm
	.type	_ZN6VectorIiE7reserveEm, @function
_ZN6VectorIiE7reserveEm:
.LFB2025:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L213
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L209
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIiE7copyArrEPiPKim
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L211
	jmp	.L212
.L209:
	call	__cxa_throw_bad_array_new_length@PLT
.L212:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L211:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L213:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2025:
	.size	_ZN6VectorIiE7reserveEm, .-_ZN6VectorIiE7reserveEm
	.section	.text._ZN6VectorIiE11shrinkToFitEv,"axG",@progbits,_ZN6VectorIiE11shrinkToFitEv,comdat
	.align 2
	.weak	_ZN6VectorIiE11shrinkToFitEv
	.type	_ZN6VectorIiE11shrinkToFitEv, @function
_ZN6VectorIiE11shrinkToFitEv:
.LFB2026:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L215
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIiE7copyArrEPiPKim
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L217
	jmp	.L218
.L215:
	call	__cxa_throw_bad_array_new_length@PLT
.L218:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L217:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2026:
	.size	_ZN6VectorIiE11shrinkToFitEv, .-_ZN6VectorIiE11shrinkToFitEv
	.section	.text._ZN6VectorIiE5beginEv,"axG",@progbits,_ZN6VectorIiE5beginEv,comdat
	.align 2
	.weak	_ZN6VectorIiE5beginEv
	.type	_ZN6VectorIiE5beginEv, @function
_ZN6VectorIiE5beginEv:
.LFB2027:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorIiE8IteratorC1EPi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L221
	call	__stack_chk_fail@PLT
.L221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2027:
	.size	_ZN6VectorIiE5beginEv, .-_ZN6VectorIiE5beginEv
	.section	.text._ZN6VectorIiE3endEv,"axG",@progbits,_ZN6VectorIiE3endEv,comdat
	.align 2
	.weak	_ZN6VectorIiE3endEv
	.type	_ZN6VectorIiE3endEv, @function
_ZN6VectorIiE3endEv:
.LFB2028:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L223
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIiE5beginEv
	jmp	.L225
.L223:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$2, %rax
	addq	%rax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorIiE8IteratorC1EPi
	movq	-16(%rbp), %rax
.L225:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L226
	call	__stack_chk_fail@PLT
.L226:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2028:
	.size	_ZN6VectorIiE3endEv, .-_ZN6VectorIiE3endEv
	.section	.text._ZN6VectorIiE7copyArrEPiPKim,"axG",@progbits,_ZN6VectorIiE7copyArrEPiPKim,comdat
	.align 2
	.weak	_ZN6VectorIiE7copyArrEPiPKim
	.type	_ZN6VectorIiE7copyArrEPiPKim, @function
_ZN6VectorIiE7copyArrEPiPKim:
.LFB2029:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L228
.L229:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
.L228:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-48(%rbp), %rax
	jb	.L229
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2029:
	.size	_ZN6VectorIiE7copyArrEPiPKim, .-_ZN6VectorIiE7copyArrEPiPKim
	.section	.text._ZN6VectorIiE13sizeExpansionEm,"axG",@progbits,_ZN6VectorIiE13sizeExpansionEm,comdat
	.align 2
	.weak	_ZN6VectorIiE13sizeExpansionEm
	.type	_ZN6VectorIiE13sizeExpansionEm, @function
_ZN6VectorIiE13sizeExpansionEm:
.LFB2030:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L231
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L233
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L233
.L238:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	js	.L234
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L235
.L234:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L235:
	movq	-8(%rbp), %rax
	movss	16(%rax), %xmm1
	mulss	%xmm1, %xmm0
	comiss	.LC7(%rip), %xmm0
	jnb	.L236
	cvttss2siq	%xmm0, %rax
	jmp	.L237
.L236:
	movss	.LC7(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L237:
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L233:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L238
	movl	$1, %eax
	jmp	.L239
.L231:
	movl	$0, %eax
.L239:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2030:
	.size	_ZN6VectorIiE13sizeExpansionEm, .-_ZN6VectorIiE13sizeExpansionEm
	.section	.text._ZN6VectorIiE8IteratorC2EPi,"axG",@progbits,_ZN6VectorIiE8IteratorC5EPi,comdat
	.align 2
	.weak	_ZN6VectorIiE8IteratorC2EPi
	.type	_ZN6VectorIiE8IteratorC2EPi, @function
_ZN6VectorIiE8IteratorC2EPi:
.LFB2032:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2032:
	.size	_ZN6VectorIiE8IteratorC2EPi, .-_ZN6VectorIiE8IteratorC2EPi
	.weak	_ZN6VectorIiE8IteratorC1EPi
	.set	_ZN6VectorIiE8IteratorC1EPi,_ZN6VectorIiE8IteratorC2EPi
	.section	.text._ZN6VectorIiE8IteratordeEv,"axG",@progbits,_ZN6VectorIiE8IteratordeEv,comdat
	.align 2
	.weak	_ZN6VectorIiE8IteratordeEv
	.type	_ZN6VectorIiE8IteratordeEv, @function
_ZN6VectorIiE8IteratordeEv:
.LFB2034:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2034:
	.size	_ZN6VectorIiE8IteratordeEv, .-_ZN6VectorIiE8IteratordeEv
	.section	.text._ZNK6VectorIiE8IteratordeEv,"axG",@progbits,_ZNK6VectorIiE8IteratordeEv,comdat
	.align 2
	.weak	_ZNK6VectorIiE8IteratordeEv
	.type	_ZNK6VectorIiE8IteratordeEv, @function
_ZNK6VectorIiE8IteratordeEv:
.LFB2035:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2035:
	.size	_ZNK6VectorIiE8IteratordeEv, .-_ZNK6VectorIiE8IteratordeEv
	.section	.text._ZN6VectorIiE8IteratorptEv,"axG",@progbits,_ZN6VectorIiE8IteratorptEv,comdat
	.align 2
	.weak	_ZN6VectorIiE8IteratorptEv
	.type	_ZN6VectorIiE8IteratorptEv, @function
_ZN6VectorIiE8IteratorptEv:
.LFB2036:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2036:
	.size	_ZN6VectorIiE8IteratorptEv, .-_ZN6VectorIiE8IteratorptEv
	.section	.text._ZNK6VectorIiE8IteratorptEv,"axG",@progbits,_ZNK6VectorIiE8IteratorptEv,comdat
	.align 2
	.weak	_ZNK6VectorIiE8IteratorptEv
	.type	_ZNK6VectorIiE8IteratorptEv, @function
_ZNK6VectorIiE8IteratorptEv:
.LFB2037:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2037:
	.size	_ZNK6VectorIiE8IteratorptEv, .-_ZNK6VectorIiE8IteratorptEv
	.section	.text._ZN6VectorIiE8IteratorppEv,"axG",@progbits,_ZN6VectorIiE8IteratorppEv,comdat
	.align 2
	.weak	_ZN6VectorIiE8IteratorppEv
	.type	_ZN6VectorIiE8IteratorppEv, @function
_ZN6VectorIiE8IteratorppEv:
.LFB2038:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2038:
	.size	_ZN6VectorIiE8IteratorppEv, .-_ZN6VectorIiE8IteratorppEv
	.section	.text._ZN6VectorIiE8IteratorppEi,"axG",@progbits,_ZN6VectorIiE8IteratorppEi,comdat
	.align 2
	.weak	_ZN6VectorIiE8IteratorppEi
	.type	_ZN6VectorIiE8IteratorppEi, @function
_ZN6VectorIiE8IteratorppEi:
.LFB2039:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L253
	call	__stack_chk_fail@PLT
.L253:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2039:
	.size	_ZN6VectorIiE8IteratorppEi, .-_ZN6VectorIiE8IteratorppEi
	.section	.text._ZNK6VectorIiE8IteratoreqERKS1_,"axG",@progbits,_ZNK6VectorIiE8IteratoreqERKS1_,comdat
	.align 2
	.weak	_ZNK6VectorIiE8IteratoreqERKS1_
	.type	_ZNK6VectorIiE8IteratoreqERKS1_, @function
_ZNK6VectorIiE8IteratoreqERKS1_:
.LFB2040:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L255
	movl	$1, %eax
	jmp	.L256
.L255:
	movl	$0, %eax
.L256:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2040:
	.size	_ZNK6VectorIiE8IteratoreqERKS1_, .-_ZNK6VectorIiE8IteratoreqERKS1_
	.section	.text._ZNK6VectorIiE8IteratorneERKS1_,"axG",@progbits,_ZNK6VectorIiE8IteratorneERKS1_,comdat
	.align 2
	.weak	_ZNK6VectorIiE8IteratorneERKS1_
	.type	_ZNK6VectorIiE8IteratorneERKS1_, @function
_ZNK6VectorIiE8IteratorneERKS1_:
.LFB2041:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L258
	movl	$1, %eax
	jmp	.L259
.L258:
	movl	$0, %eax
.L259:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2041:
	.size	_ZNK6VectorIiE8IteratorneERKS1_, .-_ZNK6VectorIiE8IteratorneERKS1_
	.section	.text._ZN6VectorIdEC2EPKdmf,"axG",@progbits,_ZN6VectorIdEC5EPKdmf,comdat
	.align 2
	.weak	_ZN6VectorIdEC2EPKdmf
	.type	_ZN6VectorIdEC2EPKdmf, @function
_ZN6VectorIdEC2EPKdmf:
.LFB2043:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2043
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movss	%xmm0, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movss	.LC1(%rip), %xmm0
	comiss	-60(%rbp), %xmm0
	jb	.L275
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB79:
	call	_ZNSt16invalid_argumentC1EPKc@PLT
.LEHE79:
	movq	_ZNSt16invalid_argumentD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt16invalid_argument(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB80:
	call	__cxa_throw@PLT
.L275:
	cmpq	$0, -56(%rbp)
	je	.L263
	movq	-56(%rbp), %rax
	jmp	.L264
.L263:
	movl	$1, %eax
.L264:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L265
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE80:
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB81:
	call	_ZSt4copyIPKdPdET0_T_S4_S3_
.LEHE81:
	jmp	.L276
.L265:
.LEHB82:
	call	__cxa_throw_bad_array_new_length@PLT
.L276:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, 16(%rax)
	jmp	.L277
.L271:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE82:
.L272:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L269
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L269:
.LEHB83:
	call	__cxa_rethrow@PLT
.LEHE83:
.L273:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB84:
	call	_Unwind_Resume@PLT
.LEHE84:
.L277:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2043:
	.section	.gcc_except_table._ZN6VectorIdEC2EPKdmf,"aG",@progbits,_ZN6VectorIdEC5EPKdmf,comdat
	.align 4
.LLSDA2043:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2043-.LLSDATTD2043
.LLSDATTD2043:
	.byte	0x1
	.uleb128 .LLSDACSE2043-.LLSDACSB2043
.LLSDACSB2043:
	.uleb128 .LEHB79-.LFB2043
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L271-.LFB2043
	.uleb128 0
	.uleb128 .LEHB80-.LFB2043
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB2043
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L272-.LFB2043
	.uleb128 0x1
	.uleb128 .LEHB82-.LFB2043
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LFB2043
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L273-.LFB2043
	.uleb128 0
	.uleb128 .LEHB84-.LFB2043
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
.LLSDACSE2043:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2043:
	.section	.text._ZN6VectorIdEC2EPKdmf,"axG",@progbits,_ZN6VectorIdEC5EPKdmf,comdat
	.size	_ZN6VectorIdEC2EPKdmf, .-_ZN6VectorIdEC2EPKdmf
	.weak	_ZN6VectorIdEC1EPKdmf
	.set	_ZN6VectorIdEC1EPKdmf,_ZN6VectorIdEC2EPKdmf
	.section	.text._ZN6VectorIdEC2ERKS0_,"axG",@progbits,_ZN6VectorIdEC5ERKS0_,comdat
	.align 2
	.weak	_ZN6VectorIdEC2ERKS0_
	.type	_ZN6VectorIdEC2ERKS0_, @function
_ZN6VectorIdEC2ERKS0_:
.LFB2046:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2046
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L279
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
.LEHB85:
	call	_Znam@PLT
.LEHE85:
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB86:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE86:
	jmp	.L286
.L279:
.LEHB87:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE87:
.L286:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 16(%rax)
	jmp	.L287
.L284:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L282
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L282:
.LEHB88:
	call	__cxa_rethrow@PLT
.LEHE88:
.L285:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB89:
	call	_Unwind_Resume@PLT
.LEHE89:
.L287:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2046:
	.section	.gcc_except_table._ZN6VectorIdEC2ERKS0_,"aG",@progbits,_ZN6VectorIdEC5ERKS0_,comdat
	.align 4
.LLSDA2046:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2046-.LLSDATTD2046
.LLSDATTD2046:
	.byte	0x1
	.uleb128 .LLSDACSE2046-.LLSDACSB2046
.LLSDACSB2046:
	.uleb128 .LEHB85-.LFB2046
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB86-.LFB2046
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L284-.LFB2046
	.uleb128 0x1
	.uleb128 .LEHB87-.LFB2046
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB88-.LFB2046
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L285-.LFB2046
	.uleb128 0
	.uleb128 .LEHB89-.LFB2046
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
.LLSDACSE2046:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2046:
	.section	.text._ZN6VectorIdEC2ERKS0_,"axG",@progbits,_ZN6VectorIdEC5ERKS0_,comdat
	.size	_ZN6VectorIdEC2ERKS0_, .-_ZN6VectorIdEC2ERKS0_
	.weak	_ZN6VectorIdEC1ERKS0_
	.set	_ZN6VectorIdEC1ERKS0_,_ZN6VectorIdEC2ERKS0_
	.section	.text._ZN6VectorIdEaSERKS0_,"axG",@progbits,_ZN6VectorIdEaSERKS0_,comdat
	.align 2
	.weak	_ZN6VectorIdEaSERKS0_
	.type	_ZN6VectorIdEaSERKS0_, @function
_ZN6VectorIdEaSERKS0_:
.LFB2048:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2048
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L289
	movq	-40(%rbp), %rax
	jmp	.L300
.L289:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L291
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
.LEHB90:
	call	_Znam@PLT
.LEHE90:
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB91:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE91:
	jmp	.L299
.L291:
.LEHB92:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE92:
.L299:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L293
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L293:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-40(%rbp), %rax
	jmp	.L300
.L297:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L295
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L295:
.LEHB93:
	call	__cxa_rethrow@PLT
.LEHE93:
.L298:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB94:
	call	_Unwind_Resume@PLT
.LEHE94:
.L300:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2048:
	.section	.gcc_except_table._ZN6VectorIdEaSERKS0_,"aG",@progbits,_ZN6VectorIdEaSERKS0_,comdat
	.align 4
.LLSDA2048:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2048-.LLSDATTD2048
.LLSDATTD2048:
	.byte	0x1
	.uleb128 .LLSDACSE2048-.LLSDACSB2048
.LLSDACSB2048:
	.uleb128 .LEHB90-.LFB2048
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB2048
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L297-.LFB2048
	.uleb128 0x1
	.uleb128 .LEHB92-.LFB2048
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB93-.LFB2048
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L298-.LFB2048
	.uleb128 0
	.uleb128 .LEHB94-.LFB2048
	.uleb128 .LEHE94-.LEHB94
	.uleb128 0
	.uleb128 0
.LLSDACSE2048:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2048:
	.section	.text._ZN6VectorIdEaSERKS0_,"axG",@progbits,_ZN6VectorIdEaSERKS0_,comdat
	.size	_ZN6VectorIdEaSERKS0_, .-_ZN6VectorIdEaSERKS0_
	.section	.text._ZN6VectorIdEC2EOS0_,"axG",@progbits,_ZN6VectorIdEC5EOS0_,comdat
	.align 2
	.weak	_ZN6VectorIdEC2EOS0_
	.type	_ZN6VectorIdEC2EOS0_, @function
_ZN6VectorIdEC2EOS0_:
.LFB2050:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2050:
	.size	_ZN6VectorIdEC2EOS0_, .-_ZN6VectorIdEC2EOS0_
	.weak	_ZN6VectorIdEC1EOS0_
	.set	_ZN6VectorIdEC1EOS0_,_ZN6VectorIdEC2EOS0_
	.section	.text._ZN6VectorIdEaSEOS0_,"axG",@progbits,_ZN6VectorIdEaSEOS0_,comdat
	.align 2
	.weak	_ZN6VectorIdEaSEOS0_
	.type	_ZN6VectorIdEaSEOS0_, @function
_ZN6VectorIdEaSEOS0_:
.LFB2052:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L303
	movq	-8(%rbp), %rax
	jmp	.L304
.L303:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L305
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L305
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L305:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
.L304:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2052:
	.size	_ZN6VectorIdEaSEOS0_, .-_ZN6VectorIdEaSEOS0_
	.section	.text._ZN6VectorIdED2Ev,"axG",@progbits,_ZN6VectorIdED5Ev,comdat
	.align 2
	.weak	_ZN6VectorIdED2Ev
	.type	_ZN6VectorIdED2Ev, @function
_ZN6VectorIdED2Ev:
.LFB2054:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L308
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L308:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2054:
	.size	_ZN6VectorIdED2Ev, .-_ZN6VectorIdED2Ev
	.weak	_ZN6VectorIdED1Ev
	.set	_ZN6VectorIdED1Ev,_ZN6VectorIdED2Ev
	.section	.text._ZN6VectorIdE8pushBackERKd,"axG",@progbits,_ZN6VectorIdE8pushBackERKd,comdat
	.align 2
	.weak	_ZN6VectorIdE8pushBackERKd
	.type	_ZN6VectorIdE8pushBackERKd, @function
_ZN6VectorIdE8pushBackERKd:
.LFB2056:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2056
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN6VectorIdE13sizeExpansionEm
	testb	%al, %al
	je	.L310
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L311
	salq	$3, %rax
	movq	%rax, %rdi
.LEHB95:
	call	_Znam@PLT
.LEHE95:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB96:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE96:
	jmp	.L319
.L311:
.LEHB97:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE97:
.L319:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L313
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L313:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L310:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L320
.L317:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L315
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L315:
.LEHB98:
	call	__cxa_rethrow@PLT
.LEHE98:
.L318:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB99:
	call	_Unwind_Resume@PLT
.LEHE99:
.L320:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2056:
	.section	.gcc_except_table._ZN6VectorIdE8pushBackERKd,"aG",@progbits,_ZN6VectorIdE8pushBackERKd,comdat
	.align 4
.LLSDA2056:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2056-.LLSDATTD2056
.LLSDATTD2056:
	.byte	0x1
	.uleb128 .LLSDACSE2056-.LLSDACSB2056
.LLSDACSB2056:
	.uleb128 .LEHB95-.LFB2056
	.uleb128 .LEHE95-.LEHB95
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB96-.LFB2056
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L317-.LFB2056
	.uleb128 0x1
	.uleb128 .LEHB97-.LFB2056
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB98-.LFB2056
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L318-.LFB2056
	.uleb128 0
	.uleb128 .LEHB99-.LFB2056
	.uleb128 .LEHE99-.LEHB99
	.uleb128 0
	.uleb128 0
.LLSDACSE2056:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2056:
	.section	.text._ZN6VectorIdE8pushBackERKd,"axG",@progbits,_ZN6VectorIdE8pushBackERKd,comdat
	.size	_ZN6VectorIdE8pushBackERKd, .-_ZN6VectorIdE8pushBackERKd
	.section	.text._ZN6VectorIdE9pushFrontERKd,"axG",@progbits,_ZN6VectorIdE9pushFrontERKd,comdat
	.align 2
	.weak	_ZN6VectorIdE9pushFrontERKd
	.type	_ZN6VectorIdE9pushFrontERKd, @function
_ZN6VectorIdE9pushFrontERKd:
.LFB2057:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2057
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN6VectorIdE13sizeExpansionEm
	testb	%al, %al
	je	.L322
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L323
	salq	$3, %rax
	movq	%rax, %rdi
.LEHB100:
	call	_Znam@PLT
.LEHE100:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB101:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE101:
	jmp	.L331
.L323:
.LEHB102:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE102:
.L331:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L325
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L325:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L322:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L332
.L329:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L327
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L327:
.LEHB103:
	call	__cxa_rethrow@PLT
.LEHE103:
.L330:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB104:
	call	_Unwind_Resume@PLT
.LEHE104:
.L332:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2057:
	.section	.gcc_except_table._ZN6VectorIdE9pushFrontERKd,"aG",@progbits,_ZN6VectorIdE9pushFrontERKd,comdat
	.align 4
.LLSDA2057:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2057-.LLSDATTD2057
.LLSDATTD2057:
	.byte	0x1
	.uleb128 .LLSDACSE2057-.LLSDACSB2057
.LLSDACSB2057:
	.uleb128 .LEHB100-.LFB2057
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB101-.LFB2057
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L329-.LFB2057
	.uleb128 0x1
	.uleb128 .LEHB102-.LFB2057
	.uleb128 .LEHE102-.LEHB102
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB103-.LFB2057
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L330-.LFB2057
	.uleb128 0
	.uleb128 .LEHB104-.LFB2057
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
.LLSDACSE2057:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2057:
	.section	.text._ZN6VectorIdE9pushFrontERKd,"axG",@progbits,_ZN6VectorIdE9pushFrontERKd,comdat
	.size	_ZN6VectorIdE9pushFrontERKd, .-_ZN6VectorIdE9pushFrontERKd
	.section	.text._ZN6VectorIdE6insertERKdm,"axG",@progbits,_ZN6VectorIdE6insertERKdm,comdat
	.align 2
	.weak	_ZN6VectorIdE6insertERKdm
	.type	_ZN6VectorIdE6insertERKdm, @function
_ZN6VectorIdE6insertERKdm:
.LFB2058:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2058
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L334
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB105:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE105:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB106:
	call	__cxa_throw@PLT
.L334:
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN6VectorIdE13sizeExpansionEm
	testb	%al, %al
	je	.L335
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L336
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE106:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB107:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE107:
	jmp	.L351
.L336:
.LEHB108:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE108:
.L351:
	movq	-56(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB109:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE109:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L338
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L338:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L339
.L335:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB110:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE110:
.L339:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L352
.L346:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB111:
	call	_Unwind_Resume@PLT
.LEHE111:
.L347:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L342
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L342:
.LEHB112:
	call	__cxa_rethrow@PLT
.LEHE112:
.L348:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB113:
	call	_Unwind_Resume@PLT
.LEHE113:
.L349:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.LEHB114:
	call	__cxa_rethrow@PLT
.LEHE114:
.L350:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB115:
	call	_Unwind_Resume@PLT
.LEHE115:
.L352:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2058:
	.section	.gcc_except_table._ZN6VectorIdE6insertERKdm,"aG",@progbits,_ZN6VectorIdE6insertERKdm,comdat
	.align 4
.LLSDA2058:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2058-.LLSDATTD2058
.LLSDATTD2058:
	.byte	0x1
	.uleb128 .LLSDACSE2058-.LLSDACSB2058
.LLSDACSB2058:
	.uleb128 .LEHB105-.LFB2058
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L346-.LFB2058
	.uleb128 0
	.uleb128 .LEHB106-.LFB2058
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB2058
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L347-.LFB2058
	.uleb128 0x1
	.uleb128 .LEHB108-.LFB2058
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB2058
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L347-.LFB2058
	.uleb128 0x1
	.uleb128 .LEHB110-.LFB2058
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L349-.LFB2058
	.uleb128 0x1
	.uleb128 .LEHB111-.LFB2058
	.uleb128 .LEHE111-.LEHB111
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB112-.LFB2058
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L348-.LFB2058
	.uleb128 0
	.uleb128 .LEHB113-.LFB2058
	.uleb128 .LEHE113-.LEHB113
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB114-.LFB2058
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L350-.LFB2058
	.uleb128 0
	.uleb128 .LEHB115-.LFB2058
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
.LLSDACSE2058:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2058:
	.section	.text._ZN6VectorIdE6insertERKdm,"axG",@progbits,_ZN6VectorIdE6insertERKdm,comdat
	.size	_ZN6VectorIdE6insertERKdm, .-_ZN6VectorIdE6insertERKdm
	.section	.text._ZN6VectorIdE6insertEPKdmm,"axG",@progbits,_ZN6VectorIdE6insertEPKdmm,comdat
	.align 2
	.weak	_ZN6VectorIdE6insertEPKdmm
	.type	_ZN6VectorIdE6insertEPKdmm, @function
_ZN6VectorIdE6insertEPKdmm:
.LFB2059:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2059
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L354
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB116:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE116:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB117:
	call	__cxa_throw@PLT
.L354:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorIdE13sizeExpansionEm
	testb	%al, %al
	je	.L355
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L356
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE117:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB118:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE118:
	jmp	.L371
.L356:
.LEHB119:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE119:
.L371:
	movq	-64(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB120:
	call	_ZSt4copyIPKdPdET0_T_S4_S3_
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE120:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L358
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L358:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L359
.L355:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB121:
	call	_ZSt4copyIPKdPdET0_T_S4_S3_
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE121:
.L359:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L372
.L366:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB122:
	call	_Unwind_Resume@PLT
.LEHE122:
.L367:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L362
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L362:
.LEHB123:
	call	__cxa_rethrow@PLT
.LEHE123:
.L368:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB124:
	call	_Unwind_Resume@PLT
.LEHE124:
.L369:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.LEHB125:
	call	__cxa_rethrow@PLT
.LEHE125:
.L370:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB126:
	call	_Unwind_Resume@PLT
.LEHE126:
.L372:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2059:
	.section	.gcc_except_table._ZN6VectorIdE6insertEPKdmm,"aG",@progbits,_ZN6VectorIdE6insertEPKdmm,comdat
	.align 4
.LLSDA2059:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2059-.LLSDATTD2059
.LLSDATTD2059:
	.byte	0x1
	.uleb128 .LLSDACSE2059-.LLSDACSB2059
.LLSDACSB2059:
	.uleb128 .LEHB116-.LFB2059
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L366-.LFB2059
	.uleb128 0
	.uleb128 .LEHB117-.LFB2059
	.uleb128 .LEHE117-.LEHB117
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB118-.LFB2059
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L367-.LFB2059
	.uleb128 0x1
	.uleb128 .LEHB119-.LFB2059
	.uleb128 .LEHE119-.LEHB119
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB120-.LFB2059
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L367-.LFB2059
	.uleb128 0x1
	.uleb128 .LEHB121-.LFB2059
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L369-.LFB2059
	.uleb128 0x1
	.uleb128 .LEHB122-.LFB2059
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB123-.LFB2059
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L368-.LFB2059
	.uleb128 0
	.uleb128 .LEHB124-.LFB2059
	.uleb128 .LEHE124-.LEHB124
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB125-.LFB2059
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L370-.LFB2059
	.uleb128 0
	.uleb128 .LEHB126-.LFB2059
	.uleb128 .LEHE126-.LEHB126
	.uleb128 0
	.uleb128 0
.LLSDACSE2059:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2059:
	.section	.text._ZN6VectorIdE6insertEPKdmm,"axG",@progbits,_ZN6VectorIdE6insertEPKdmm,comdat
	.size	_ZN6VectorIdE6insertEPKdmm, .-_ZN6VectorIdE6insertEPKdmm
	.section	.text._ZN6VectorIdE6insertERKS0_m,"axG",@progbits,_ZN6VectorIdE6insertERKS0_m,comdat
	.align 2
	.weak	_ZN6VectorIdE6insertERKS0_m
	.type	_ZN6VectorIdE6insertERKS0_m, @function
_ZN6VectorIdE6insertERKS0_m:
.LFB2060:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2060
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L374
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB127:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE127:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB128:
	call	__cxa_throw@PLT
.L374:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorIdE13sizeExpansionEm
	testb	%al, %al
	je	.L375
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L376
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE128:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB129:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE129:
	jmp	.L391
.L376:
.LEHB130:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE130:
.L391:
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %r12
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB131:
	call	_ZNK6VectorIdEixEm
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK6VectorIdEixEm
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKdPdET0_T_S4_S3_
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE131:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L378
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L378:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L379
.L375:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %r12
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB132:
	call	_ZNK6VectorIdEixEm
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK6VectorIdEixEm
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKdPdET0_T_S4_S3_
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE132:
.L379:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L392
.L386:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB133:
	call	_Unwind_Resume@PLT
.LEHE133:
.L387:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L382
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L382:
.LEHB134:
	call	__cxa_rethrow@PLT
.LEHE134:
.L388:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB135:
	call	_Unwind_Resume@PLT
.LEHE135:
.L389:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.LEHB136:
	call	__cxa_rethrow@PLT
.LEHE136:
.L390:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB137:
	call	_Unwind_Resume@PLT
.LEHE137:
.L392:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2060:
	.section	.gcc_except_table._ZN6VectorIdE6insertERKS0_m,"aG",@progbits,_ZN6VectorIdE6insertERKS0_m,comdat
	.align 4
.LLSDA2060:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2060-.LLSDATTD2060
.LLSDATTD2060:
	.byte	0x1
	.uleb128 .LLSDACSE2060-.LLSDACSB2060
.LLSDACSB2060:
	.uleb128 .LEHB127-.LFB2060
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L386-.LFB2060
	.uleb128 0
	.uleb128 .LEHB128-.LFB2060
	.uleb128 .LEHE128-.LEHB128
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB129-.LFB2060
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L387-.LFB2060
	.uleb128 0x1
	.uleb128 .LEHB130-.LFB2060
	.uleb128 .LEHE130-.LEHB130
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB131-.LFB2060
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L387-.LFB2060
	.uleb128 0x1
	.uleb128 .LEHB132-.LFB2060
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L389-.LFB2060
	.uleb128 0x1
	.uleb128 .LEHB133-.LFB2060
	.uleb128 .LEHE133-.LEHB133
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB134-.LFB2060
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L388-.LFB2060
	.uleb128 0
	.uleb128 .LEHB135-.LFB2060
	.uleb128 .LEHE135-.LEHB135
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB136-.LFB2060
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L390-.LFB2060
	.uleb128 0
	.uleb128 .LEHB137-.LFB2060
	.uleb128 .LEHE137-.LEHB137
	.uleb128 0
	.uleb128 0
.LLSDACSE2060:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2060:
	.section	.text._ZN6VectorIdE6insertERKS0_m,"axG",@progbits,_ZN6VectorIdE6insertERKS0_m,comdat
	.size	_ZN6VectorIdE6insertERKS0_m, .-_ZN6VectorIdE6insertERKS0_m
	.section	.text._ZN6VectorIdE7popBackEv,"axG",@progbits,_ZN6VectorIdE7popBackEv,comdat
	.align 2
	.weak	_ZN6VectorIdE7popBackEv
	.type	_ZN6VectorIdE7popBackEv, @function
_ZN6VectorIdE7popBackEv:
.LFB2061:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2061
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L394
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB138:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE138:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB139:
	call	__cxa_throw@PLT
.L394:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L397
.L396:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE139:
.L397:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2061:
	.section	.gcc_except_table._ZN6VectorIdE7popBackEv,"aG",@progbits,_ZN6VectorIdE7popBackEv,comdat
.LLSDA2061:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2061-.LLSDACSB2061
.LLSDACSB2061:
	.uleb128 .LEHB138-.LFB2061
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L396-.LFB2061
	.uleb128 0
	.uleb128 .LEHB139-.LFB2061
	.uleb128 .LEHE139-.LEHB139
	.uleb128 0
	.uleb128 0
.LLSDACSE2061:
	.section	.text._ZN6VectorIdE7popBackEv,"axG",@progbits,_ZN6VectorIdE7popBackEv,comdat
	.size	_ZN6VectorIdE7popBackEv, .-_ZN6VectorIdE7popBackEv
	.section	.text._ZN6VectorIdE8popFrontEv,"axG",@progbits,_ZN6VectorIdE8popFrontEv,comdat
	.align 2
	.weak	_ZN6VectorIdE8popFrontEv
	.type	_ZN6VectorIdE8popFrontEv, @function
_ZN6VectorIdE8popFrontEv:
.LFB2062:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2062
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L399
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB140:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE140:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB141:
	call	__cxa_throw@PLT
.L399:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L400
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE141:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rsi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
.LEHB142:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE142:
	jmp	.L410
.L400:
.LEHB143:
	call	__cxa_throw_bad_array_new_length@PLT
.L410:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L402
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L402:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L411
.L407:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE143:
.L408:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L405
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L405:
.LEHB144:
	call	__cxa_rethrow@PLT
.LEHE144:
.L409:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB145:
	call	_Unwind_Resume@PLT
.LEHE145:
.L411:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2062:
	.section	.gcc_except_table._ZN6VectorIdE8popFrontEv,"aG",@progbits,_ZN6VectorIdE8popFrontEv,comdat
	.align 4
.LLSDA2062:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2062-.LLSDATTD2062
.LLSDATTD2062:
	.byte	0x1
	.uleb128 .LLSDACSE2062-.LLSDACSB2062
.LLSDACSB2062:
	.uleb128 .LEHB140-.LFB2062
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L407-.LFB2062
	.uleb128 0
	.uleb128 .LEHB141-.LFB2062
	.uleb128 .LEHE141-.LEHB141
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB142-.LFB2062
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L408-.LFB2062
	.uleb128 0x1
	.uleb128 .LEHB143-.LFB2062
	.uleb128 .LEHE143-.LEHB143
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB144-.LFB2062
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L409-.LFB2062
	.uleb128 0
	.uleb128 .LEHB145-.LFB2062
	.uleb128 .LEHE145-.LEHB145
	.uleb128 0
	.uleb128 0
.LLSDACSE2062:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2062:
	.section	.text._ZN6VectorIdE8popFrontEv,"axG",@progbits,_ZN6VectorIdE8popFrontEv,comdat
	.size	_ZN6VectorIdE8popFrontEv, .-_ZN6VectorIdE8popFrontEv
	.section	.text._ZN6VectorIdE5eraseEmm,"axG",@progbits,_ZN6VectorIdE5eraseEmm,comdat
	.align 2
	.weak	_ZN6VectorIdE5eraseEmm
	.type	_ZN6VectorIdE5eraseEmm, @function
_ZN6VectorIdE5eraseEmm:
.LFB2063:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2063
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L413
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB146:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE146:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB147:
	call	__cxa_throw@PLT
.L413:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	cmpq	%rdx, %rax
	jnb	.L414
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L412
.L414:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L416
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE147:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB148:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE148:
	jmp	.L426
.L416:
.LEHB149:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE149:
.L426:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	addq	%rdi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB150:
	call	_ZSt4copyIPdS0_ET0_T_S2_S1_
.LEHE150:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L418
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L418:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L412
.L423:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB151:
	call	_Unwind_Resume@PLT
.LEHE151:
.L424:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -24(%rbp)
	je	.L421
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L421:
.LEHB152:
	call	__cxa_rethrow@PLT
.LEHE152:
.L425:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB153:
	call	_Unwind_Resume@PLT
.LEHE153:
.L412:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2063:
	.section	.gcc_except_table._ZN6VectorIdE5eraseEmm,"aG",@progbits,_ZN6VectorIdE5eraseEmm,comdat
	.align 4
.LLSDA2063:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2063-.LLSDATTD2063
.LLSDATTD2063:
	.byte	0x1
	.uleb128 .LLSDACSE2063-.LLSDACSB2063
.LLSDACSB2063:
	.uleb128 .LEHB146-.LFB2063
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L423-.LFB2063
	.uleb128 0
	.uleb128 .LEHB147-.LFB2063
	.uleb128 .LEHE147-.LEHB147
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB148-.LFB2063
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L424-.LFB2063
	.uleb128 0x1
	.uleb128 .LEHB149-.LFB2063
	.uleb128 .LEHE149-.LEHB149
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB150-.LFB2063
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L424-.LFB2063
	.uleb128 0x1
	.uleb128 .LEHB151-.LFB2063
	.uleb128 .LEHE151-.LEHB151
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB152-.LFB2063
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L425-.LFB2063
	.uleb128 0
	.uleb128 .LEHB153-.LFB2063
	.uleb128 .LEHE153-.LEHB153
	.uleb128 0
	.uleb128 0
.LLSDACSE2063:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2063:
	.section	.text._ZN6VectorIdE5eraseEmm,"axG",@progbits,_ZN6VectorIdE5eraseEmm,comdat
	.size	_ZN6VectorIdE5eraseEmm, .-_ZN6VectorIdE5eraseEmm
	.section	.text._ZN6VectorIdE12eraseBetweenEmm,"axG",@progbits,_ZN6VectorIdE12eraseBetweenEmm,comdat
	.align 2
	.weak	_ZN6VectorIdE12eraseBetweenEmm
	.type	_ZN6VectorIdE12eraseBetweenEmm, @function
_ZN6VectorIdE12eraseBetweenEmm:
.LFB2064:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorIdE5eraseEmm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2064:
	.size	_ZN6VectorIdE12eraseBetweenEmm, .-_ZN6VectorIdE12eraseBetweenEmm
	.section	.text._ZNK6VectorIdE4sizeEv,"axG",@progbits,_ZNK6VectorIdE4sizeEv,comdat
	.align 2
	.weak	_ZNK6VectorIdE4sizeEv
	.type	_ZNK6VectorIdE4sizeEv, @function
_ZNK6VectorIdE4sizeEv:
.LFB2065:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2065:
	.size	_ZNK6VectorIdE4sizeEv, .-_ZNK6VectorIdE4sizeEv
	.section	.text._ZNK6VectorIdE8capacityEv,"axG",@progbits,_ZNK6VectorIdE8capacityEv,comdat
	.align 2
	.weak	_ZNK6VectorIdE8capacityEv
	.type	_ZNK6VectorIdE8capacityEv, @function
_ZNK6VectorIdE8capacityEv:
.LFB2066:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2066:
	.size	_ZNK6VectorIdE8capacityEv, .-_ZNK6VectorIdE8capacityEv
	.section	.text._ZNK6VectorIdE10loadFactorEv,"axG",@progbits,_ZNK6VectorIdE10loadFactorEv,comdat
	.align 2
	.weak	_ZNK6VectorIdE10loadFactorEv
	.type	_ZNK6VectorIdE10loadFactorEv, @function
_ZNK6VectorIdE10loadFactorEv:
.LFB2067:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	js	.L433
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L434
.L433:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L434:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	js	.L435
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	jmp	.L436
.L435:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
.L436:
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2067:
	.size	_ZNK6VectorIdE10loadFactorEv, .-_ZNK6VectorIdE10loadFactorEv
	.section	.text._ZN6VectorIdEixEm,"axG",@progbits,_ZN6VectorIdEixEm,comdat
	.align 2
	.weak	_ZN6VectorIdEixEm
	.type	_ZN6VectorIdEixEm, @function
_ZN6VectorIdEixEm:
.LFB2068:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2068
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L439
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB154:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE154:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB155:
	call	__cxa_throw@PLT
.L439:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	jmp	.L443
.L442:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE155:
.L443:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2068:
	.section	.gcc_except_table._ZN6VectorIdEixEm,"aG",@progbits,_ZN6VectorIdEixEm,comdat
.LLSDA2068:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2068-.LLSDACSB2068
.LLSDACSB2068:
	.uleb128 .LEHB154-.LFB2068
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L442-.LFB2068
	.uleb128 0
	.uleb128 .LEHB155-.LFB2068
	.uleb128 .LEHE155-.LEHB155
	.uleb128 0
	.uleb128 0
.LLSDACSE2068:
	.section	.text._ZN6VectorIdEixEm,"axG",@progbits,_ZN6VectorIdEixEm,comdat
	.size	_ZN6VectorIdEixEm, .-_ZN6VectorIdEixEm
	.section	.text._ZNK6VectorIdEixEm,"axG",@progbits,_ZNK6VectorIdEixEm,comdat
	.align 2
	.weak	_ZNK6VectorIdEixEm
	.type	_ZNK6VectorIdEixEm, @function
_ZNK6VectorIdEixEm:
.LFB2069:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2069
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L445
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L445
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB156:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE156:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB157:
	call	__cxa_throw@PLT
.L445:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	jmp	.L449
.L448:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE157:
.L449:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2069:
	.section	.gcc_except_table._ZNK6VectorIdEixEm,"aG",@progbits,_ZNK6VectorIdEixEm,comdat
.LLSDA2069:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2069-.LLSDACSB2069
.LLSDACSB2069:
	.uleb128 .LEHB156-.LFB2069
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L448-.LFB2069
	.uleb128 0
	.uleb128 .LEHB157-.LFB2069
	.uleb128 .LEHE157-.LEHB157
	.uleb128 0
	.uleb128 0
.LLSDACSE2069:
	.section	.text._ZNK6VectorIdEixEm,"axG",@progbits,_ZNK6VectorIdEixEm,comdat
	.size	_ZNK6VectorIdEixEm, .-_ZNK6VectorIdEixEm
	.section	.text._ZNK6VectorIdE4findERKd,"axG",@progbits,_ZNK6VectorIdE4findERKd,comdat
	.align 2
	.weak	_ZNK6VectorIdE4findERKd
	.type	_ZNK6VectorIdE4findERKd, @function
_ZNK6VectorIdE4findERKd:
.LFB2070:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L451
.L455:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L452
	ucomisd	%xmm1, %xmm0
	jne	.L452
	movl	-4(%rbp), %eax
	cltq
	jmp	.L454
.L452:
	addl	$1, -4(%rbp)
.L451:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L455
	movq	$-1, %rax
.L454:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2070:
	.size	_ZNK6VectorIdE4findERKd, .-_ZNK6VectorIdE4findERKd
	.section	.text._ZN6VectorIdE7reserveEm,"axG",@progbits,_ZN6VectorIdE7reserveEm,comdat
	.align 2
	.weak	_ZN6VectorIdE7reserveEm
	.type	_ZN6VectorIdE7reserveEm, @function
_ZN6VectorIdE7reserveEm:
.LFB2071:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L463
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L459
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIdE7copyArrEPdPKdm
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L461
	jmp	.L462
.L459:
	call	__cxa_throw_bad_array_new_length@PLT
.L462:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L461:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L463:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2071:
	.size	_ZN6VectorIdE7reserveEm, .-_ZN6VectorIdE7reserveEm
	.section	.text._ZN6VectorIdE11shrinkToFitEv,"axG",@progbits,_ZN6VectorIdE11shrinkToFitEv,comdat
	.align 2
	.weak	_ZN6VectorIdE11shrinkToFitEv
	.type	_ZN6VectorIdE11shrinkToFitEv, @function
_ZN6VectorIdE11shrinkToFitEv:
.LFB2072:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L465
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIdE7copyArrEPdPKdm
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L467
	jmp	.L468
.L465:
	call	__cxa_throw_bad_array_new_length@PLT
.L468:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L467:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2072:
	.size	_ZN6VectorIdE11shrinkToFitEv, .-_ZN6VectorIdE11shrinkToFitEv
	.section	.text._ZN6VectorIdE5beginEv,"axG",@progbits,_ZN6VectorIdE5beginEv,comdat
	.align 2
	.weak	_ZN6VectorIdE5beginEv
	.type	_ZN6VectorIdE5beginEv, @function
_ZN6VectorIdE5beginEv:
.LFB2073:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorIdE8IteratorC1EPd
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L471
	call	__stack_chk_fail@PLT
.L471:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2073:
	.size	_ZN6VectorIdE5beginEv, .-_ZN6VectorIdE5beginEv
	.section	.text._ZN6VectorIdE3endEv,"axG",@progbits,_ZN6VectorIdE3endEv,comdat
	.align 2
	.weak	_ZN6VectorIdE3endEv
	.type	_ZN6VectorIdE3endEv, @function
_ZN6VectorIdE3endEv:
.LFB2074:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L473
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorIdE5beginEv
	jmp	.L475
.L473:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorIdE8IteratorC1EPd
	movq	-16(%rbp), %rax
.L475:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L476
	call	__stack_chk_fail@PLT
.L476:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2074:
	.size	_ZN6VectorIdE3endEv, .-_ZN6VectorIdE3endEv
	.section	.text._ZN6VectorIdE7copyArrEPdPKdm,"axG",@progbits,_ZN6VectorIdE7copyArrEPdPKdm,comdat
	.align 2
	.weak	_ZN6VectorIdE7copyArrEPdPKdm
	.type	_ZN6VectorIdE7copyArrEPdPKdm, @function
_ZN6VectorIdE7copyArrEPdPKdm:
.LFB2075:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L478
.L479:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -4(%rbp)
.L478:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-48(%rbp), %rax
	jb	.L479
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2075:
	.size	_ZN6VectorIdE7copyArrEPdPKdm, .-_ZN6VectorIdE7copyArrEPdPKdm
	.section	.text._ZN6VectorIdE13sizeExpansionEm,"axG",@progbits,_ZN6VectorIdE13sizeExpansionEm,comdat
	.align 2
	.weak	_ZN6VectorIdE13sizeExpansionEm
	.type	_ZN6VectorIdE13sizeExpansionEm, @function
_ZN6VectorIdE13sizeExpansionEm:
.LFB2076:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L481
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L483
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L483
.L488:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	js	.L484
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L485
.L484:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L485:
	movq	-8(%rbp), %rax
	movss	16(%rax), %xmm1
	mulss	%xmm1, %xmm0
	comiss	.LC7(%rip), %xmm0
	jnb	.L486
	cvttss2siq	%xmm0, %rax
	jmp	.L487
.L486:
	movss	.LC7(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L487:
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L483:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L488
	movl	$1, %eax
	jmp	.L489
.L481:
	movl	$0, %eax
.L489:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2076:
	.size	_ZN6VectorIdE13sizeExpansionEm, .-_ZN6VectorIdE13sizeExpansionEm
	.section	.text._ZN6VectorIdE8IteratorC2EPd,"axG",@progbits,_ZN6VectorIdE8IteratorC5EPd,comdat
	.align 2
	.weak	_ZN6VectorIdE8IteratorC2EPd
	.type	_ZN6VectorIdE8IteratorC2EPd, @function
_ZN6VectorIdE8IteratorC2EPd:
.LFB2078:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2078:
	.size	_ZN6VectorIdE8IteratorC2EPd, .-_ZN6VectorIdE8IteratorC2EPd
	.weak	_ZN6VectorIdE8IteratorC1EPd
	.set	_ZN6VectorIdE8IteratorC1EPd,_ZN6VectorIdE8IteratorC2EPd
	.section	.text._ZN6VectorIdE8IteratordeEv,"axG",@progbits,_ZN6VectorIdE8IteratordeEv,comdat
	.align 2
	.weak	_ZN6VectorIdE8IteratordeEv
	.type	_ZN6VectorIdE8IteratordeEv, @function
_ZN6VectorIdE8IteratordeEv:
.LFB2080:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2080:
	.size	_ZN6VectorIdE8IteratordeEv, .-_ZN6VectorIdE8IteratordeEv
	.section	.text._ZNK6VectorIdE8IteratordeEv,"axG",@progbits,_ZNK6VectorIdE8IteratordeEv,comdat
	.align 2
	.weak	_ZNK6VectorIdE8IteratordeEv
	.type	_ZNK6VectorIdE8IteratordeEv, @function
_ZNK6VectorIdE8IteratordeEv:
.LFB2081:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2081:
	.size	_ZNK6VectorIdE8IteratordeEv, .-_ZNK6VectorIdE8IteratordeEv
	.section	.text._ZN6VectorIdE8IteratorptEv,"axG",@progbits,_ZN6VectorIdE8IteratorptEv,comdat
	.align 2
	.weak	_ZN6VectorIdE8IteratorptEv
	.type	_ZN6VectorIdE8IteratorptEv, @function
_ZN6VectorIdE8IteratorptEv:
.LFB2082:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2082:
	.size	_ZN6VectorIdE8IteratorptEv, .-_ZN6VectorIdE8IteratorptEv
	.section	.text._ZNK6VectorIdE8IteratorptEv,"axG",@progbits,_ZNK6VectorIdE8IteratorptEv,comdat
	.align 2
	.weak	_ZNK6VectorIdE8IteratorptEv
	.type	_ZNK6VectorIdE8IteratorptEv, @function
_ZNK6VectorIdE8IteratorptEv:
.LFB2083:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2083:
	.size	_ZNK6VectorIdE8IteratorptEv, .-_ZNK6VectorIdE8IteratorptEv
	.section	.text._ZN6VectorIdE8IteratorppEv,"axG",@progbits,_ZN6VectorIdE8IteratorppEv,comdat
	.align 2
	.weak	_ZN6VectorIdE8IteratorppEv
	.type	_ZN6VectorIdE8IteratorppEv, @function
_ZN6VectorIdE8IteratorppEv:
.LFB2084:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2084:
	.size	_ZN6VectorIdE8IteratorppEv, .-_ZN6VectorIdE8IteratorppEv
	.section	.text._ZN6VectorIdE8IteratorppEi,"axG",@progbits,_ZN6VectorIdE8IteratorppEi,comdat
	.align 2
	.weak	_ZN6VectorIdE8IteratorppEi
	.type	_ZN6VectorIdE8IteratorppEi, @function
_ZN6VectorIdE8IteratorppEi:
.LFB2085:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L503
	call	__stack_chk_fail@PLT
.L503:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2085:
	.size	_ZN6VectorIdE8IteratorppEi, .-_ZN6VectorIdE8IteratorppEi
	.section	.text._ZNK6VectorIdE8IteratoreqERKS1_,"axG",@progbits,_ZNK6VectorIdE8IteratoreqERKS1_,comdat
	.align 2
	.weak	_ZNK6VectorIdE8IteratoreqERKS1_
	.type	_ZNK6VectorIdE8IteratoreqERKS1_, @function
_ZNK6VectorIdE8IteratoreqERKS1_:
.LFB2086:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L505
	movl	$1, %eax
	jmp	.L506
.L505:
	movl	$0, %eax
.L506:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2086:
	.size	_ZNK6VectorIdE8IteratoreqERKS1_, .-_ZNK6VectorIdE8IteratoreqERKS1_
	.section	.text._ZNK6VectorIdE8IteratorneERKS1_,"axG",@progbits,_ZNK6VectorIdE8IteratorneERKS1_,comdat
	.align 2
	.weak	_ZNK6VectorIdE8IteratorneERKS1_
	.type	_ZNK6VectorIdE8IteratorneERKS1_, @function
_ZNK6VectorIdE8IteratorneERKS1_:
.LFB2087:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L508
	movl	$1, %eax
	jmp	.L509
.L508:
	movl	$0, %eax
.L509:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2087:
	.size	_ZNK6VectorIdE8IteratorneERKS1_, .-_ZNK6VectorIdE8IteratorneERKS1_
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKS5_mf,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5EPKS5_mf,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKS5_mf
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKS5_mf, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKS5_mf:
.LFB2089:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2089
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movss	%xmm0, -76(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 24(%rax)
	movss	.LC1(%rip), %xmm0
	comiss	-76(%rbp), %xmm0
	jb	.L532
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB158:
	call	_ZNSt16invalid_argumentC1EPKc@PLT
.LEHE158:
	movq	_ZNSt16invalid_argumentD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt16invalid_argument(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB159:
	call	__cxa_throw@PLT
.L532:
	cmpq	$0, -72(%rbp)
	je	.L513
	movq	-72(%rbp), %rax
	jmp	.L514
.L513:
	movl	$1, %eax
.L514:
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L515
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L516
.L515:
	movq	$-1, %rax
.L516:
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE159:
	movq	%rax, %r12
	movq	%rbx, (%r12)
	leaq	8(%r12), %rax
	leaq	-1(%rbx), %rdx
	movq	%rdx, %r13
	movq	%rax, %r14
	jmp	.L517
.L518:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r13
	addq	$32, %r14
.L517:
	testq	%r13, %r13
	jns	.L518
	movl	$0, %edx
	leaq	8(%r12), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L535
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L534
	nop
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L521
.L534:
	nop
	movq	$-1, %rax
.L521:
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZdaPvm@PLT
.L535:
	nop
	movq	-72(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB160:
	call	_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_
.LEHE160:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movss	-76(%rbp), %xmm0
	movss	%xmm0, 16(%rax)
	jmp	.L533
.L528:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB161:
	call	_Unwind_Resume@PLT
.LEHE161:
.L529:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -40(%rbp)
	je	.L524
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L526:
	cmpq	-40(%rbp), %rbx
	je	.L525
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L526
.L525:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L524:
.LEHB162:
	call	__cxa_rethrow@PLT
.LEHE162:
.L530:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB163:
	call	_Unwind_Resume@PLT
.LEHE163:
.L533:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2089:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKS5_mf,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5EPKS5_mf,comdat
	.align 4
.LLSDA2089:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2089-.LLSDATTD2089
.LLSDATTD2089:
	.byte	0x1
	.uleb128 .LLSDACSE2089-.LLSDACSB2089
.LLSDACSB2089:
	.uleb128 .LEHB158-.LFB2089
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L528-.LFB2089
	.uleb128 0
	.uleb128 .LEHB159-.LFB2089
	.uleb128 .LEHE159-.LEHB159
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB160-.LFB2089
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L529-.LFB2089
	.uleb128 0x1
	.uleb128 .LEHB161-.LFB2089
	.uleb128 .LEHE161-.LEHB161
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB162-.LFB2089
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L530-.LFB2089
	.uleb128 0
	.uleb128 .LEHB163-.LFB2089
	.uleb128 .LEHE163-.LEHB163
	.uleb128 0
	.uleb128 0
.LLSDACSE2089:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2089:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKS5_mf,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5EPKS5_mf,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKS5_mf, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKS5_mf
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKS5_mf
	.set	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKS5_mf,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKS5_mf
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5ERKS6_,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_:
.LFB2092:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2092
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$288230376151711743, %rdx
	cmpq	%rax, %rdx
	jb	.L537
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L538
.L537:
	movq	$-1, %rax
.L538:
	movq	%rax, %rdi
.LEHB164:
	call	_Znam@PLT
.LEHE164:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	leaq	8(%rbx), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movq	%rax, %r12
	movq	%rdx, %r13
	jmp	.L539
.L540:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r12
	addq	$32, %r13
.L539:
	testq	%r12, %r12
	jns	.L540
	movl	$0, %edx
	leaq	8(%rbx), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L553
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$288230376151711743, %rdx
	cmpq	%rax, %rdx
	jb	.L552
	nop
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L543
.L552:
	nop
	movq	$-1, %rax
.L543:
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZdaPvm@PLT
.L553:
	nop
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB165:
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE165:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 16(%rax)
	jmp	.L551
.L549:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -40(%rbp)
	je	.L545
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L547:
	cmpq	-40(%rbp), %rbx
	je	.L546
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L547
.L546:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L545:
.LEHB166:
	call	__cxa_rethrow@PLT
.LEHE166:
.L550:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB167:
	call	_Unwind_Resume@PLT
.LEHE167:
.L551:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2092:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5ERKS6_,comdat
	.align 4
.LLSDA2092:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2092-.LLSDATTD2092
.LLSDATTD2092:
	.byte	0x1
	.uleb128 .LLSDACSE2092-.LLSDACSB2092
.LLSDACSB2092:
	.uleb128 .LEHB164-.LFB2092
	.uleb128 .LEHE164-.LEHB164
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB165-.LFB2092
	.uleb128 .LEHE165-.LEHB165
	.uleb128 .L549-.LFB2092
	.uleb128 0x1
	.uleb128 .LEHB166-.LFB2092
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L550-.LFB2092
	.uleb128 0
	.uleb128 .LEHB167-.LFB2092
	.uleb128 .LEHE167-.LEHB167
	.uleb128 0
	.uleb128 0
.LLSDACSE2092:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2092:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5ERKS6_,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS6_
	.set	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS6_,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_:
.LFB2094:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2094
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.L555
	movq	-56(%rbp), %rax
	jmp	.L574
.L555:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$288230376151711743, %rdx
	cmpq	%rax, %rdx
	jb	.L557
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L558
.L557:
	movq	$-1, %rax
.L558:
	movq	%rax, %rdi
.LEHB168:
	call	_Znam@PLT
.LEHE168:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	leaq	8(%rbx), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movq	%rax, %r12
	movq	%rdx, %r13
	jmp	.L559
.L560:
	movq	%r13, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r12
	addq	$32, %r13
.L559:
	testq	%r12, %r12
	jns	.L560
	movl	$0, %edx
	leaq	8(%rbx), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L576
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$288230376151711743, %rdx
	cmpq	%rax, %rdx
	jb	.L575
	nop
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L563
.L575:
	nop
	movq	$-1, %rax
.L563:
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZdaPvm@PLT
.L576:
	nop
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB169:
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE169:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L564
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L566:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L565
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L566
.L565:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L564:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-56(%rbp), %rax
	jmp	.L574
.L572:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -40(%rbp)
	je	.L568
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L570:
	cmpq	-40(%rbp), %rbx
	je	.L569
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L570
.L569:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L568:
.LEHB170:
	call	__cxa_rethrow@PLT
.LEHE170:
.L573:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB171:
	call	_Unwind_Resume@PLT
.LEHE171:
.L574:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2094:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_,comdat
	.align 4
.LLSDA2094:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2094-.LLSDATTD2094
.LLSDATTD2094:
	.byte	0x1
	.uleb128 .LLSDACSE2094-.LLSDACSB2094
.LLSDACSB2094:
	.uleb128 .LEHB168-.LFB2094
	.uleb128 .LEHE168-.LEHB168
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB169-.LFB2094
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L572-.LFB2094
	.uleb128 0x1
	.uleb128 .LEHB170-.LFB2094
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L573-.LFB2094
	.uleb128 0
	.uleb128 .LEHB171-.LFB2094
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
.LLSDACSE2094:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2094:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS6_
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC5EOS6_,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_:
.LFB2096:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2096:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EOS6_
	.set	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EOS6_,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_:
.LFB2098:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L579
	movq	-24(%rbp), %rax
	jmp	.L580
.L579:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L581
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L581
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L583:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L582
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L583
.L582:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L581:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movss	16(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
.L580:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2098:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED5Ev,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev:
.LFB2100:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L588
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L587:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L586
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L587
.L586:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L588:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2100:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev
	.set	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_:
.LFB2102:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2102
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm
	testb	%al, %al
	je	.L590
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L591
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L592
.L591:
	movq	$-1, %rax
.L592:
	movq	%rax, %rdi
.LEHB172:
	call	_Znam@PLT
.LEHE172:
	movq	%rax, %r12
	movq	%rbx, (%r12)
	leaq	8(%r12), %rax
	leaq	-1(%rbx), %rdx
	movq	%rdx, %r13
	movq	%rax, %r14
	jmp	.L593
.L594:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r13
	addq	$32, %r14
.L593:
	testq	%r13, %r13
	jns	.L594
	movl	$0, %edx
	leaq	8(%r12), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L610
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L609
	nop
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L597
.L609:
	nop
	movq	$-1, %rax
.L597:
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZdaPvm@PLT
.L610:
	nop
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB173:
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE173:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L598
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L600:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L599
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L600
.L599:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L598:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L590:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB174:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
.LEHE174:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L608
.L606:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -40(%rbp)
	je	.L602
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L604:
	cmpq	-40(%rbp), %rbx
	je	.L603
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L604
.L603:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L602:
.LEHB175:
	call	__cxa_rethrow@PLT
.LEHE175:
.L607:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB176:
	call	_Unwind_Resume@PLT
.LEHE176:
.L608:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2102:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_,comdat
	.align 4
.LLSDA2102:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2102-.LLSDATTD2102
.LLSDATTD2102:
	.byte	0x1
	.uleb128 .LLSDACSE2102-.LLSDACSB2102
.LLSDACSB2102:
	.uleb128 .LEHB172-.LFB2102
	.uleb128 .LEHE172-.LEHB172
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB173-.LFB2102
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L606-.LFB2102
	.uleb128 0x1
	.uleb128 .LEHB174-.LFB2102
	.uleb128 .LEHE174-.LEHB174
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB175-.LFB2102
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L607-.LFB2102
	.uleb128 0
	.uleb128 .LEHB176-.LFB2102
	.uleb128 .LEHE176-.LEHB176
	.uleb128 0
	.uleb128 0
.LLSDACSE2102:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2102:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8pushBackERKS5_
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_:
.LFB2103:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2103
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm
	testb	%al, %al
	je	.L612
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L613
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L614
.L613:
	movq	$-1, %rax
.L614:
	movq	%rax, %rdi
.LEHB177:
	call	_Znam@PLT
.LEHE177:
	movq	%rax, %r12
	movq	%rbx, (%r12)
	leaq	8(%r12), %rax
	leaq	-1(%rbx), %rdx
	movq	%rdx, %r13
	movq	%rax, %r14
	jmp	.L615
.L616:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r13
	addq	$32, %r14
.L615:
	testq	%r13, %r13
	jns	.L616
	movl	$0, %edx
	leaq	8(%r12), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L632
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L631
	nop
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L619
.L631:
	nop
	movq	$-1, %rax
.L619:
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZdaPvm@PLT
.L632:
	nop
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB178:
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE178:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L620
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L622:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L621
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L622
.L621:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L620:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L612:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB179:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
.LEHE179:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L630
.L628:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -40(%rbp)
	je	.L624
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L626:
	cmpq	-40(%rbp), %rbx
	je	.L625
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L626
.L625:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L624:
.LEHB180:
	call	__cxa_rethrow@PLT
.LEHE180:
.L629:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB181:
	call	_Unwind_Resume@PLT
.LEHE181:
.L630:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2103:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_,comdat
	.align 4
.LLSDA2103:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2103-.LLSDATTD2103
.LLSDATTD2103:
	.byte	0x1
	.uleb128 .LLSDACSE2103-.LLSDACSB2103
.LLSDACSB2103:
	.uleb128 .LEHB177-.LFB2103
	.uleb128 .LEHE177-.LEHB177
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB178-.LFB2103
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L628-.LFB2103
	.uleb128 0x1
	.uleb128 .LEHB179-.LFB2103
	.uleb128 .LEHE179-.LEHB179
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB180-.LFB2103
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L629-.LFB2103
	.uleb128 0
	.uleb128 .LEHB181-.LFB2103
	.uleb128 .LEHE181-.LEHB181
	.uleb128 0
	.uleb128 0
.LLSDACSE2103:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2103:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9pushFrontERKS5_
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m:
.LFB2104:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2104
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L634
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB182:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE182:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB183:
	call	__cxa_throw@PLT
.L634:
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm
	testb	%al, %al
	je	.L635
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L636
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L637
.L636:
	movq	$-1, %rax
.L637:
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE183:
	movq	%rax, %r12
	movq	%rbx, (%r12)
	leaq	8(%r12), %rax
	leaq	-1(%rbx), %rdx
	movq	%rdx, %r13
	movq	%rax, %r14
	jmp	.L638
.L639:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r13
	addq	$32, %r14
.L638:
	testq	%r13, %r13
	jns	.L639
	movl	$0, %edx
	leaq	8(%r12), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L662
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L661
	nop
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L642
.L661:
	nop
	movq	$-1, %rax
.L642:
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZdaPvm@PLT
.L662:
	nop
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB184:
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
	movq	-72(%rbp), %rax
	addq	$1, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rsi
	salq	$5, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE184:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L643
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L645:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L644
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L645
.L644:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L643:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L646
.L635:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	salq	$5, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rsi
	salq	$5, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB185:
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE185:
.L646:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$5, %rdx
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB186:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L660
.L655:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE186:
.L656:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -40(%rbp)
	je	.L649
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L651:
	cmpq	-40(%rbp), %rbx
	je	.L650
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L651
.L650:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L649:
.LEHB187:
	call	__cxa_rethrow@PLT
.LEHE187:
.L657:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB188:
	call	_Unwind_Resume@PLT
.LEHE188:
.L658:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.LEHB189:
	call	__cxa_rethrow@PLT
.LEHE189:
.L659:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB190:
	call	_Unwind_Resume@PLT
.LEHE190:
.L660:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2104:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m,comdat
	.align 4
.LLSDA2104:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2104-.LLSDATTD2104
.LLSDATTD2104:
	.byte	0x1
	.uleb128 .LLSDACSE2104-.LLSDACSB2104
.LLSDACSB2104:
	.uleb128 .LEHB182-.LFB2104
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L655-.LFB2104
	.uleb128 0
	.uleb128 .LEHB183-.LFB2104
	.uleb128 .LEHE183-.LEHB183
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB184-.LFB2104
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L656-.LFB2104
	.uleb128 0x1
	.uleb128 .LEHB185-.LFB2104
	.uleb128 .LEHE185-.LEHB185
	.uleb128 .L658-.LFB2104
	.uleb128 0x1
	.uleb128 .LEHB186-.LFB2104
	.uleb128 .LEHE186-.LEHB186
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB187-.LFB2104
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L657-.LFB2104
	.uleb128 0
	.uleb128 .LEHB188-.LFB2104
	.uleb128 .LEHE188-.LEHB188
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB189-.LFB2104
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L659-.LFB2104
	.uleb128 0
	.uleb128 .LEHB190-.LFB2104
	.uleb128 .LEHE190-.LEHB190
	.uleb128 0
	.uleb128 0
.LLSDACSE2104:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2104:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS5_m
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm:
.LFB2105:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2105
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L664
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB191:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE191:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB192:
	call	__cxa_throw@PLT
.L664:
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm
	testb	%al, %al
	je	.L665
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L666
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L667
.L666:
	movq	$-1, %rax
.L667:
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE192:
	movq	%rax, %r12
	movq	%rbx, (%r12)
	leaq	8(%r12), %rax
	leaq	-1(%rbx), %rdx
	movq	%rdx, %r13
	movq	%rax, %r14
	jmp	.L668
.L669:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r13
	addq	$32, %r14
.L668:
	testq	%r13, %r13
	jns	.L669
	movl	$0, %edx
	leaq	8(%r12), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L692
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L691
	nop
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L672
.L691:
	nop
	movq	$-1, %rax
.L672:
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZdaPvm@PLT
.L692:
	nop
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB193:
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
	movq	-80(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	addq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rsi
	salq	$5, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE193:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L673
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L675:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L674
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L675
.L674:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L673:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L676
.L665:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rdx
	salq	$5, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	addq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB194:
	call	_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$5, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rsi
	salq	$5, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE194:
.L676:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L690
.L685:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB195:
	call	_Unwind_Resume@PLT
.LEHE195:
.L686:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -40(%rbp)
	je	.L679
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L681:
	cmpq	-40(%rbp), %rbx
	je	.L680
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L681
.L680:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L679:
.LEHB196:
	call	__cxa_rethrow@PLT
.LEHE196:
.L687:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB197:
	call	_Unwind_Resume@PLT
.LEHE197:
.L688:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.LEHB198:
	call	__cxa_rethrow@PLT
.LEHE198:
.L689:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB199:
	call	_Unwind_Resume@PLT
.LEHE199:
.L690:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2105:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm,comdat
	.align 4
.LLSDA2105:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2105-.LLSDATTD2105
.LLSDATTD2105:
	.byte	0x1
	.uleb128 .LLSDACSE2105-.LLSDACSB2105
.LLSDACSB2105:
	.uleb128 .LEHB191-.LFB2105
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L685-.LFB2105
	.uleb128 0
	.uleb128 .LEHB192-.LFB2105
	.uleb128 .LEHE192-.LEHB192
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB193-.LFB2105
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L686-.LFB2105
	.uleb128 0x1
	.uleb128 .LEHB194-.LFB2105
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L688-.LFB2105
	.uleb128 0x1
	.uleb128 .LEHB195-.LFB2105
	.uleb128 .LEHE195-.LEHB195
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB196-.LFB2105
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L687-.LFB2105
	.uleb128 0
	.uleb128 .LEHB197-.LFB2105
	.uleb128 .LEHE197-.LEHB197
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB198-.LFB2105
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L689-.LFB2105
	.uleb128 0
	.uleb128 .LEHB199-.LFB2105
	.uleb128 .LEHE199-.LEHB199
	.uleb128 0
	.uleb128 0
.LLSDACSE2105:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2105:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertEPKS5_mm
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m:
.LFB2106:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2106
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L694
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB200:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE200:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB201:
	call	__cxa_throw@PLT
.L694:
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm
	testb	%al, %al
	je	.L695
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L696
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L697
.L696:
	movq	$-1, %rax
.L697:
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE201:
	movq	%rax, %r12
	movq	%rbx, (%r12)
	leaq	8(%r12), %rax
	leaq	-1(%rbx), %rdx
	movq	%rdx, %r13
	movq	%rax, %r14
	jmp	.L698
.L699:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r13
	addq	$32, %r14
.L698:
	testq	%r13, %r13
	jns	.L699
	movl	$0, %edx
	leaq	8(%r12), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L722
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L721
	nop
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L702
.L721:
	nop
	movq	$-1, %rax
.L702:
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZdaPvm@PLT
.L722:
	nop
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB202:
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
	movq	-72(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %r12
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rsi
	salq	$5, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE202:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L703
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L705:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L704
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L705
.L704:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L703:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L706
.L695:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %r12
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB203:
	call	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rsi
	salq	$5, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE203:
.L706:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L720
.L715:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB204:
	call	_Unwind_Resume@PLT
.LEHE204:
.L716:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -40(%rbp)
	je	.L709
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L711:
	cmpq	-40(%rbp), %rbx
	je	.L710
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L711
.L710:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L709:
.LEHB205:
	call	__cxa_rethrow@PLT
.LEHE205:
.L717:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB206:
	call	_Unwind_Resume@PLT
.LEHE206:
.L718:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
.LEHB207:
	call	__cxa_rethrow@PLT
.LEHE207:
.L719:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB208:
	call	_Unwind_Resume@PLT
.LEHE208:
.L720:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2106:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m,comdat
	.align 4
.LLSDA2106:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2106-.LLSDATTD2106
.LLSDATTD2106:
	.byte	0x1
	.uleb128 .LLSDACSE2106-.LLSDACSB2106
.LLSDACSB2106:
	.uleb128 .LEHB200-.LFB2106
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L715-.LFB2106
	.uleb128 0
	.uleb128 .LEHB201-.LFB2106
	.uleb128 .LEHE201-.LEHB201
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB202-.LFB2106
	.uleb128 .LEHE202-.LEHB202
	.uleb128 .L716-.LFB2106
	.uleb128 0x1
	.uleb128 .LEHB203-.LFB2106
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L718-.LFB2106
	.uleb128 0x1
	.uleb128 .LEHB204-.LFB2106
	.uleb128 .LEHE204-.LEHB204
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB205-.LFB2106
	.uleb128 .LEHE205-.LEHB205
	.uleb128 .L717-.LFB2106
	.uleb128 0
	.uleb128 .LEHB206-.LFB2106
	.uleb128 .LEHE206-.LEHB206
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB207-.LFB2106
	.uleb128 .LEHE207-.LEHB207
	.uleb128 .L719-.LFB2106
	.uleb128 0
	.uleb128 .LEHB208-.LFB2106
	.uleb128 .LEHE208-.LEHB208
	.uleb128 0
	.uleb128 0
.LLSDACSE2106:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2106:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6insertERKS6_m
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv:
.LFB2107:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2107
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L724
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB209:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE209:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB210:
	call	__cxa_throw@PLT
.L724:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L727
.L726:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE210:
.L727:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2107:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv,comdat
.LLSDA2107:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2107-.LLSDACSB2107
.LLSDACSB2107:
	.uleb128 .LEHB209-.LFB2107
	.uleb128 .LEHE209-.LEHB209
	.uleb128 .L726-.LFB2107
	.uleb128 0
	.uleb128 .LEHB210-.LFB2107
	.uleb128 .LEHE210-.LEHB210
	.uleb128 0
	.uleb128 0
.LLSDACSE2107:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7popBackEv
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv:
.LFB2108:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2108
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L729
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB211:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE211:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB212:
	call	__cxa_throw@PLT
.L729:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L730
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L731
.L730:
	movq	$-1, %rax
.L731:
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE212:
	movq	%rax, %r12
	movq	%rbx, (%r12)
	leaq	8(%r12), %rax
	leaq	-1(%rbx), %rdx
	movq	%rdx, %r13
	movq	%rax, %r14
	jmp	.L732
.L733:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r13
	addq	$32, %r14
.L732:
	testq	%r13, %r13
	jns	.L733
	movl	$0, %edx
	leaq	8(%r12), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L751
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L750
	nop
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L736
.L750:
	nop
	movq	$-1, %rax
.L736:
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZdaPvm@PLT
.L751:
	nop
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rsi
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	leaq	32(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
.LEHB213:
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE213:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L737
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L739:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L738
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L739
.L738:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L737:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L749
.L746:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB214:
	call	_Unwind_Resume@PLT
.LEHE214:
.L747:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -40(%rbp)
	je	.L742
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L744:
	cmpq	-40(%rbp), %rbx
	je	.L743
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L744
.L743:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L742:
.LEHB215:
	call	__cxa_rethrow@PLT
.LEHE215:
.L748:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB216:
	call	_Unwind_Resume@PLT
.LEHE216:
.L749:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2108:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv,comdat
	.align 4
.LLSDA2108:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2108-.LLSDATTD2108
.LLSDATTD2108:
	.byte	0x1
	.uleb128 .LLSDACSE2108-.LLSDACSB2108
.LLSDACSB2108:
	.uleb128 .LEHB211-.LFB2108
	.uleb128 .LEHE211-.LEHB211
	.uleb128 .L746-.LFB2108
	.uleb128 0
	.uleb128 .LEHB212-.LFB2108
	.uleb128 .LEHE212-.LEHB212
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB213-.LFB2108
	.uleb128 .LEHE213-.LEHB213
	.uleb128 .L747-.LFB2108
	.uleb128 0x1
	.uleb128 .LEHB214-.LFB2108
	.uleb128 .LEHE214-.LEHB214
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB215-.LFB2108
	.uleb128 .LEHE215-.LEHB215
	.uleb128 .L748-.LFB2108
	.uleb128 0
	.uleb128 .LEHB216-.LFB2108
	.uleb128 .LEHE216-.LEHB216
	.uleb128 0
	.uleb128 0
.LLSDACSE2108:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2108:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8popFrontEv
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm:
.LFB2109:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2109
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L753
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB217:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE217:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB218:
	call	__cxa_throw@PLT
.L753:
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	cmpq	%rdx, %rax
	jnb	.L754
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L752
.L754:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L756
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L757
.L756:
	movq	$-1, %rax
.L757:
	movq	%rax, %rdi
	call	_Znam@PLT
.LEHE218:
	movq	%rax, %r12
	movq	%rbx, (%r12)
	leaq	8(%r12), %rax
	leaq	-1(%rbx), %rdx
	movq	%rdx, %r13
	movq	%rax, %r14
	jmp	.L758
.L759:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r13
	addq	$32, %r14
.L758:
	testq	%r13, %r13
	jns	.L759
	movl	$0, %edx
	leaq	8(%r12), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L776
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L775
	nop
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L762
.L775:
	nop
	movq	$-1, %rax
.L762:
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZdaPvm@PLT
.L776:
	nop
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rdx
	salq	$5, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB219:
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
	movq	-64(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	addq	%rdi, %rsi
	salq	$5, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
.LEHE219:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L763
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L765:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L764
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L765
.L764:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L763:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L752
.L772:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
.LEHB220:
	call	_Unwind_Resume@PLT
.LEHE220:
.L773:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -40(%rbp)
	je	.L768
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
.L770:
	cmpq	-40(%rbp), %rbx
	je	.L769
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L770
.L769:
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L768:
.LEHB221:
	call	__cxa_rethrow@PLT
.LEHE221:
.L774:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB222:
	call	_Unwind_Resume@PLT
.LEHE222:
.L752:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2109:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm,comdat
	.align 4
.LLSDA2109:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2109-.LLSDATTD2109
.LLSDATTD2109:
	.byte	0x1
	.uleb128 .LLSDACSE2109-.LLSDACSB2109
.LLSDACSB2109:
	.uleb128 .LEHB217-.LFB2109
	.uleb128 .LEHE217-.LEHB217
	.uleb128 .L772-.LFB2109
	.uleb128 0
	.uleb128 .LEHB218-.LFB2109
	.uleb128 .LEHE218-.LEHB218
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB219-.LFB2109
	.uleb128 .LEHE219-.LEHB219
	.uleb128 .L773-.LFB2109
	.uleb128 0x1
	.uleb128 .LEHB220-.LFB2109
	.uleb128 .LEHE220-.LEHB220
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB221-.LFB2109
	.uleb128 .LEHE221-.LEHB221
	.uleb128 .L774-.LFB2109
	.uleb128 0
	.uleb128 .LEHB222-.LFB2109
	.uleb128 .LEHE222-.LEHB222
	.uleb128 0
	.uleb128 0
.LLSDACSE2109:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2109:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12eraseBetweenEmm,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12eraseBetweenEmm,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12eraseBetweenEmm
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12eraseBetweenEmm, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12eraseBetweenEmm:
.LFB2110:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseEmm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2110:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12eraseBetweenEmm, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12eraseBetweenEmm
	.section	.text._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4sizeEv,"axG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4sizeEv,comdat
	.align 2
	.weak	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4sizeEv
	.type	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4sizeEv, @function
_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4sizeEv:
.LFB2111:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2111:
	.size	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4sizeEv, .-_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4sizeEv
	.section	.text._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8capacityEv,"axG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8capacityEv,comdat
	.align 2
	.weak	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8capacityEv
	.type	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8capacityEv, @function
_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8capacityEv:
.LFB2112:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2112:
	.size	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8capacityEv, .-_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8capacityEv
	.section	.text._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10loadFactorEv,"axG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10loadFactorEv,comdat
	.align 2
	.weak	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10loadFactorEv
	.type	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10loadFactorEv, @function
_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10loadFactorEv:
.LFB2113:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	js	.L783
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L784
.L783:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L784:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	js	.L785
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	jmp	.L786
.L785:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
.L786:
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2113:
	.size	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10loadFactorEv, .-_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10loadFactorEv
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm:
.LFB2114:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2114
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L789
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB223:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE223:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB224:
	call	__cxa_throw@PLT
.L789:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	jmp	.L793
.L792:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE224:
.L793:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2114:
	.section	.gcc_except_table._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,"aG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,comdat
.LLSDA2114:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2114-.LLSDACSB2114
.LLSDACSB2114:
	.uleb128 .LEHB223-.LFB2114
	.uleb128 .LEHE223-.LEHB223
	.uleb128 .L792-.LFB2114
	.uleb128 0
	.uleb128 .LEHB224-.LFB2114
	.uleb128 .LEHE224-.LEHB224
	.uleb128 0
	.uleb128 0
.LLSDACSE2114:
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,comdat
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm
	.section	.text._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,"axG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,comdat
	.align 2
	.weak	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm
	.type	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm, @function
_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm:
.LFB2115:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2115
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L795
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L795
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB225:
	call	_ZNSt12out_of_rangeC1EPKc@PLT
.LEHE225:
	movq	_ZNSt12out_of_rangeD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt12out_of_range(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB226:
	call	__cxa_throw@PLT
.L795:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	jmp	.L799
.L798:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE226:
.L799:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2115:
	.section	.gcc_except_table._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,"aG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,comdat
.LLSDA2115:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2115-.LLSDACSB2115
.LLSDACSB2115:
	.uleb128 .LEHB225-.LFB2115
	.uleb128 .LEHE225-.LEHB225
	.uleb128 .L798-.LFB2115
	.uleb128 0
	.uleb128 .LEHB226-.LFB2115
	.uleb128 .LEHE226-.LEHB226
	.uleb128 0
	.uleb128 0
.LLSDACSE2115:
	.section	.text._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,"axG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm,comdat
	.size	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm, .-_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixEm
	.section	.text._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4findERKS5_,"axG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4findERKS5_,comdat
	.align 2
	.weak	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4findERKS5_
	.type	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4findERKS5_, @function
_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4findERKS5_:
.LFB2116:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L801
.L804:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	testb	%al, %al
	je	.L802
	movl	-4(%rbp), %eax
	cltq
	jmp	.L803
.L802:
	addl	$1, -4(%rbp)
.L801:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L804
	movq	$-1, %rax
.L803:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2116:
	.size	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4findERKS5_, .-_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4findERKS5_
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7reserveEm,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7reserveEm,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7reserveEm
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7reserveEm, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7reserveEm:
.LFB2117:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L817
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L807
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L808
.L807:
	movq	$-1, %rax
.L808:
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, %r12
	movq	%rbx, (%r12)
	leaq	8(%r12), %rax
	leaq	-1(%rbx), %rdx
	movq	%rdx, %r13
	movq	%rax, %r14
	jmp	.L809
.L810:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r13
	addq	$32, %r14
.L809:
	testq	%r13, %r13
	jns	.L810
	movl	$0, %edx
	leaq	8(%r12), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L819
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L818
	nop
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L813
.L818:
	nop
	movq	$-1, %rax
.L813:
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZdaPvm@PLT
.L819:
	nop
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7copyArrEPS5_PKS5_m
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L814
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L816:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L815
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L816
.L815:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L814:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L817:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2117:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7reserveEm, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7reserveEm
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11shrinkToFitEv,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11shrinkToFitEv,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11shrinkToFitEv
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11shrinkToFitEv, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11shrinkToFitEv:
.LFB2118:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rbx
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L821
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L822
.L821:
	movq	$-1, %rax
.L822:
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, %r12
	movq	%rbx, (%r12)
	leaq	8(%r12), %rax
	leaq	-1(%rbx), %rdx
	movq	%rdx, %r13
	movq	%rax, %r14
	jmp	.L823
.L824:
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	subq	$1, %r13
	addq	$32, %r14
.L823:
	testq	%r13, %r13
	jns	.L824
	movl	$0, %edx
	leaq	8(%r12), %rax
	movq	%rax, -40(%rbp)
	testb	%dl, %dl
	je	.L832
	movabsq	$288230376151711743, %rax
	cmpq	%rbx, %rax
	jb	.L831
	nop
	movq	%rbx, %rax
	salq	$5, %rax
	addq	$8, %rax
	jmp	.L827
.L831:
	nop
	movq	$-1, %rax
.L827:
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZdaPvm@PLT
.L832:
	nop
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7copyArrEPS5_PKS5_m
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L828
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	(%rdx,%rax), %rbx
.L830:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rbx
	je	.L829
	subq	$32, %rbx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L830
.L829:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	(%rax), %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdaPvm@PLT
.L828:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2118:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11shrinkToFitEv, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11shrinkToFitEv
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv:
.LFB2119:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC1EPS5_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L835
	call	__stack_chk_fail@PLT
.L835:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2119:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3endEv,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3endEv,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3endEv
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3endEv, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3endEv:
.LFB2120:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L837
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv
	jmp	.L839
.L837:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC1EPS5_
	movq	-16(%rbp), %rax
.L839:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L840
	call	__stack_chk_fail@PLT
.L840:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2120:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3endEv, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3endEv
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7copyArrEPS5_PKS5_m,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7copyArrEPS5_PKS5_m,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7copyArrEPS5_PKS5_m
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7copyArrEPS5_PKS5_m, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7copyArrEPS5_PKS5_m:
.LFB2121:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L842
.L843:
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
	addl	$1, -4(%rbp)
.L842:
	movl	-4(%rbp), %eax
	cltq
	cmpq	-48(%rbp), %rax
	jb	.L843
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2121:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7copyArrEPS5_PKS5_m, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7copyArrEPS5_PKS5_m
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm:
.LFB2122:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L845
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L847
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L847
.L852:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	js	.L848
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L849
.L848:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L849:
	movq	-8(%rbp), %rax
	movss	16(%rax), %xmm1
	mulss	%xmm1, %xmm0
	comiss	.LC7(%rip), %xmm0
	jnb	.L850
	cvttss2siq	%xmm0, %rax
	jmp	.L851
.L850:
	movss	.LC7(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L851:
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L847:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L852
	movl	$1, %eax
	jmp	.L853
.L845:
	movl	$0, %eax
.L853:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2122:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13sizeExpansionEm
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC2EPS5_,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC5EPS5_,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC2EPS5_
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC2EPS5_, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC2EPS5_:
.LFB2124:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2124:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC2EPS5_, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC2EPS5_
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC1EPS5_
	.set	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC1EPS5_,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorC2EPS5_
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv:
.LFB2126:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2126:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv
	.section	.text._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv,"axG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv,comdat
	.align 2
	.weak	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv
	.type	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv, @function
_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv:
.LFB2127:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2127:
	.size	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv, .-_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratordeEv
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv:
.LFB2128:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2128:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv
	.section	.text._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv,"axG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv,comdat
	.align 2
	.weak	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv
	.type	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv, @function
_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv:
.LFB2129:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2129:
	.size	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv, .-_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorptEv
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEv,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEv,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEv
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEv, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEv:
.LFB2130:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2130:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEv, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEv
	.section	.text._ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEi,"axG",@progbits,_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEi,comdat
	.align 2
	.weak	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEi
	.type	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEi, @function
_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEi:
.LFB2131:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L867
	call	__stack_chk_fail@PLT
.L867:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2131:
	.size	_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEi, .-_ZN6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorppEi
	.section	.text._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratoreqERKS7_,"axG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratoreqERKS7_,comdat
	.align 2
	.weak	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratoreqERKS7_
	.type	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratoreqERKS7_, @function
_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratoreqERKS7_:
.LFB2132:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L869
	movl	$1, %eax
	jmp	.L870
.L869:
	movl	$0, %eax
.L870:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2132:
	.size	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratoreqERKS7_, .-_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratoreqERKS7_
	.section	.text._ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorneERKS7_,"axG",@progbits,_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorneERKS7_,comdat
	.align 2
	.weak	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorneERKS7_
	.type	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorneERKS7_, @function
_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorneERKS7_:
.LFB2133:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L872
	movl	$1, %eax
	jmp	.L873
.L872:
	movl	$0, %eax
.L873:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2133:
	.size	_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorneERKS7_, .-_ZNK6VectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IteratorneERKS7_
	.section	.text._ZSt4copyIPKiPiET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPKiPiET0_T_S4_S3_,comdat
	.weak	_ZSt4copyIPKiPiET0_T_S4_S3_
	.type	_ZSt4copyIPKiPiET0_T_S4_S3_, @function
_ZSt4copyIPKiPiET0_T_S4_S3_:
.LFB2243:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKiET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKiET_S2_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2243:
	.size	_ZSt4copyIPKiPiET0_T_S4_S3_, .-_ZSt4copyIPKiPiET0_T_S4_S3_
	.section	.text._ZSt4copyIPiS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt4copyIPiS0_ET0_T_S2_S1_,comdat
	.weak	_ZSt4copyIPiS0_ET0_T_S2_S1_
	.type	_ZSt4copyIPiS0_ET0_T_S2_S1_, @function
_ZSt4copyIPiS0_ET0_T_S2_S1_:
.LFB2244:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPiET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPiET_S1_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2244:
	.size	_ZSt4copyIPiS0_ET0_T_S2_S1_, .-_ZSt4copyIPiS0_ET0_T_S2_S1_
	.section	.text._ZSt4copyIPKdPdET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPKdPdET0_T_S4_S3_,comdat
	.weak	_ZSt4copyIPKdPdET0_T_S4_S3_
	.type	_ZSt4copyIPKdPdET0_T_S4_S3_, @function
_ZSt4copyIPKdPdET0_T_S4_S3_:
.LFB2245:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKdET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKdET_S2_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2245:
	.size	_ZSt4copyIPKdPdET0_T_S4_S3_, .-_ZSt4copyIPKdPdET0_T_S4_S3_
	.section	.text._ZSt4copyIPdS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt4copyIPdS0_ET0_T_S2_S1_,comdat
	.weak	_ZSt4copyIPdS0_ET0_T_S2_S1_
	.type	_ZSt4copyIPdS0_ET0_T_S2_S1_, @function
_ZSt4copyIPdS0_ET0_T_S2_S1_:
.LFB2246:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPdET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPdET_S1_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2246:
	.size	_ZSt4copyIPdS0_ET0_T_S2_S1_, .-_ZSt4copyIPdS0_ET0_T_S2_S1_
	.section	.text._ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_
	.type	_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_, @function
_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_:
.LFB2247:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2247:
	.size	_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_, .-_ZSt4copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_
	.section	.text._ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_,"axG",@progbits,_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_,comdat
	.weak	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
	.type	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_, @function
_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_:
.LFB2248:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2248:
	.size	_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_, .-_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_:
.LFB2250:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	cmpq	%rax, %rbx
	jne	.L887
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE7compareEPKcS2_m
	testl	%eax, %eax
	jne	.L887
	movl	$1, %eax
	jmp	.L888
.L887:
	movl	$0, %eax
.L888:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2250:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_
	.section	.text._ZSt12__miter_baseIPKiET_S2_,"axG",@progbits,_ZSt12__miter_baseIPKiET_S2_,comdat
	.weak	_ZSt12__miter_baseIPKiET_S2_
	.type	_ZSt12__miter_baseIPKiET_S2_, @function
_ZSt12__miter_baseIPKiET_S2_:
.LFB2308:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2308:
	.size	_ZSt12__miter_baseIPKiET_S2_, .-_ZSt12__miter_baseIPKiET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_, @function
_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_:
.LFB2309:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKiET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKiET_S2_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPiET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2309:
	.size	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	.section	.text._ZSt12__miter_baseIPiET_S1_,"axG",@progbits,_ZSt12__miter_baseIPiET_S1_,comdat
	.weak	_ZSt12__miter_baseIPiET_S1_
	.type	_ZSt12__miter_baseIPiET_S1_, @function
_ZSt12__miter_baseIPiET_S1_:
.LFB2312:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2312:
	.size	_ZSt12__miter_baseIPiET_S1_, .-_ZSt12__miter_baseIPiET_S1_
	.section	.text._ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_, @function
_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_:
.LFB2313:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPiET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2313:
	.size	_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__miter_baseIPKdET_S2_,"axG",@progbits,_ZSt12__miter_baseIPKdET_S2_,comdat
	.weak	_ZSt12__miter_baseIPKdET_S2_
	.type	_ZSt12__miter_baseIPKdET_S2_, @function
_ZSt12__miter_baseIPKdET_S2_:
.LFB2314:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2314:
	.size	_ZSt12__miter_baseIPKdET_S2_, .-_ZSt12__miter_baseIPKdET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_:
.LFB2315:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdET_S2_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPdET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2315:
	.size	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt12__miter_baseIPdET_S1_,"axG",@progbits,_ZSt12__miter_baseIPdET_S1_,comdat
	.weak	_ZSt12__miter_baseIPdET_S1_
	.type	_ZSt12__miter_baseIPdET_S1_, @function
_ZSt12__miter_baseIPdET_S1_:
.LFB2318:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2318:
	.size	_ZSt12__miter_baseIPdET_S1_, .-_ZSt12__miter_baseIPdET_S1_
	.section	.text._ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, @function
_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_:
.LFB2319:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPdET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2319:
	.size	_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__miter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_
	.type	_ZSt12__miter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_, @function
_ZSt12__miter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_:
.LFB2320:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2320:
	.size	_ZSt12__miter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_, .-_ZSt12__miter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_, @function
_ZSt13__copy_move_aILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_:
.LFB2321:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS7_S7_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2321:
	.size	_ZSt13__copy_move_aILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_
	.section	.text._ZSt12__miter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_,"axG",@progbits,_ZSt12__miter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_,comdat
	.weak	_ZSt12__miter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	.type	_ZSt12__miter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_, @function
_ZSt12__miter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_:
.LFB2324:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2324:
	.size	_ZSt12__miter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_, .-_ZSt12__miter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	.section	.text._ZSt13__copy_move_aILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_,"axG",@progbits,_ZSt13__copy_move_aILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_,comdat
	.weak	_ZSt13__copy_move_aILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_
	.type	_ZSt13__copy_move_aILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_, @function
_ZSt13__copy_move_aILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_:
.LFB2325:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS7_S7_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2325:
	.size	_ZSt13__copy_move_aILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_, .-_ZSt13__copy_move_aILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_
	.section	.text._ZSt12__niter_baseIPKiET_S2_,"axG",@progbits,_ZSt12__niter_baseIPKiET_S2_,comdat
	.weak	_ZSt12__niter_baseIPKiET_S2_
	.type	_ZSt12__niter_baseIPKiET_S2_, @function
_ZSt12__niter_baseIPKiET_S2_:
.LFB2376:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2376:
	.size	_ZSt12__niter_baseIPKiET_S2_, .-_ZSt12__niter_baseIPKiET_S2_
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.weak	_ZSt12__niter_baseIPiET_S1_
	.type	_ZSt12__niter_baseIPiET_S1_, @function
_ZSt12__niter_baseIPiET_S1_:
.LFB2377:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2377:
	.size	_ZSt12__niter_baseIPiET_S1_, .-_ZSt12__niter_baseIPiET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_:
.LFB2378:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2378:
	.size	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPiET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPiET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPiET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPiET_RKS1_S1_, @function
_ZSt12__niter_wrapIPiET_RKS1_S1_:
.LFB2379:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2379:
	.size	_ZSt12__niter_wrapIPiET_RKS1_S1_, .-_ZSt12__niter_wrapIPiET_RKS1_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_:
.LFB2380:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2380:
	.size	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_baseIPKdET_S2_,"axG",@progbits,_ZSt12__niter_baseIPKdET_S2_,comdat
	.weak	_ZSt12__niter_baseIPKdET_S2_
	.type	_ZSt12__niter_baseIPKdET_S2_, @function
_ZSt12__niter_baseIPKdET_S2_:
.LFB2381:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2381:
	.size	_ZSt12__niter_baseIPKdET_S2_, .-_ZSt12__niter_baseIPKdET_S2_
	.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
	.weak	_ZSt12__niter_baseIPdET_S1_
	.type	_ZSt12__niter_baseIPdET_S1_, @function
_ZSt12__niter_baseIPdET_S1_:
.LFB2382:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2382:
	.size	_ZSt12__niter_baseIPdET_S1_, .-_ZSt12__niter_baseIPdET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_:
.LFB2383:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2383:
	.size	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPdET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPdET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPdET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPdET_RKS1_S1_, @function
_ZSt12__niter_wrapIPdET_RKS1_S1_:
.LFB2384:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2384:
	.size	_ZSt12__niter_wrapIPdET_RKS1_S1_, .-_ZSt12__niter_wrapIPdET_RKS1_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_:
.LFB2385:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2385:
	.size	_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_,"axG",@progbits,_ZSt12__niter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_,comdat
	.weak	_ZSt12__niter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_
	.type	_ZSt12__niter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_, @function
_ZSt12__niter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_:
.LFB2386:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2386:
	.size	_ZSt12__niter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_, .-_ZSt12__niter_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_
	.section	.text._ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_,"axG",@progbits,_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_,comdat
	.weak	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	.type	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_, @function
_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_:
.LFB2387:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2387:
	.size	_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_, .-_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_
	.section	.text._ZSt14__copy_move_a1ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_
	.type	_ZSt14__copy_move_a1ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_, @function
_ZSt14__copy_move_a1ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_:
.LFB2388:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2388:
	.size	_ZSt14__copy_move_a1ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_, .-_ZSt14__copy_move_a1ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_
	.section	.text._ZSt12__niter_wrapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS7_S7_,"axG",@progbits,_ZSt12__niter_wrapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS7_S7_,comdat
	.weak	_ZSt12__niter_wrapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS7_S7_
	.type	_ZSt12__niter_wrapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS7_S7_, @function
_ZSt12__niter_wrapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS7_S7_:
.LFB2389:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2389:
	.size	_ZSt12__niter_wrapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS7_S7_, .-_ZSt12__niter_wrapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS7_S7_
	.section	.text._ZSt14__copy_move_a1ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_
	.type	_ZSt14__copy_move_a1ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_, @function
_ZSt14__copy_move_a1ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_:
.LFB2390:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2390:
	.size	_ZSt14__copy_move_a1ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_, .-_ZSt14__copy_move_a1ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_
	.section	.text._ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_:
.LFB2414:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2414:
	.size	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.section	.text._ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_:
.LFB2415:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2415:
	.size	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_:
.LFB2416:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKddEEPT0_PT_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2416:
	.size	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_:
.LFB2417:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIddEEPT0_PT_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2417:
	.size	_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_
	.section	.text._ZSt14__copy_move_a2ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_
	.type	_ZSt14__copy_move_a2ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_, @function
_ZSt14__copy_move_a2ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_:
.LFB2418:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_EET0_T_SD_SC_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2418:
	.size	_ZSt14__copy_move_a2ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_, .-_ZSt14__copy_move_a2ILb0EPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET1_T0_SA_S9_
	.section	.text._ZSt14__copy_move_a2ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_
	.type	_ZSt14__copy_move_a2ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_, @function
_ZSt14__copy_move_a2ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_:
.LFB2419:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2419:
	.size	_ZSt14__copy_move_a2ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_, .-_ZSt14__copy_move_a2ILb0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_:
.LFB2431:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L957
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L958
.L957:
	cmpq	$1, -8(%rbp)
	jne	.L958
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_
.L958:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2431:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_:
.LFB2432:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L961
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L962
.L961:
	cmpq	$1, -8(%rbp)
	jne	.L962
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_
.L962:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2432:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKddEEPT0_PT_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKddEEPT0_PT_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKddEEPT0_PT_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKddEEPT0_PT_S7_S5_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKddEEPT0_PT_S7_S5_:
.LFB2433:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L965
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L966
.L965:
	cmpq	$1, -8(%rbp)
	jne	.L966
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIdKdEEvPT_PT0_
.L966:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2433:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKddEEPT0_PT_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKddEEPT0_PT_S7_S5_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIddEEPT0_PT_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIddEEPT0_PT_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIddEEPT0_PT_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIddEEPT0_PT_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIddEEPT0_PT_S6_S4_:
.LFB2434:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L969
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L970
.L969:
	cmpq	$1, -8(%rbp)
	jne	.L970
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_
.L970:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2434:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIddEEPT0_PT_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIddEEPT0_PT_S6_S4_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_EET0_T_SD_SC_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_EET0_T_SD_SC_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_EET0_T_SD_SC_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_EET0_T_SD_SC_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_EET0_T_SD_SC_:
.LFB2435:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, -8(%rbp)
	jmp	.L973
.L974:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
	addq	$32, -24(%rbp)
	addq	$32, -40(%rbp)
	subq	$1, -8(%rbp)
.L973:
	cmpq	$0, -8(%rbp)
	jg	.L974
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2435:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_EET0_T_SD_SC_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS8_EET0_T_SD_SC_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_:
.LFB2436:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, -8(%rbp)
	jmp	.L977
.L978:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
	addq	$32, -24(%rbp)
	addq	$32, -40(%rbp)
	subq	$1, -8(%rbp)
.L977:
	cmpq	$0, -8(%rbp)
	jg	.L978
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2436:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_:
.LFB2442:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2442:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_:
.LFB2443:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2443:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIdKdEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIdKdEEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIdKdEEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIdKdEEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIdKdEEvPT_PT0_:
.LFB2444:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2444:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIdKdEEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIdKdEEvPT_PT0_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_:
.LFB2445:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2445:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIddEEvPT_PT0_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.align 4
.LC0:
	.long	1073741824
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC7:
	.long	1593835520
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 14.2.0-19ubuntu2) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
