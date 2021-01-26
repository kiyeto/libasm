section .text
		global _ft_strcmp
_ft_strcmp:
	mov 	rax, 0
	mov 	rdx, 0
	mov		rcx, 0
_check:
	movzx 	rcx, byte [rdi + rax]
	movzx 	rbx, byte [rsi + rax]
	cmp 	rcx, 0
	je 		_finish
	cmp		rbx, 0
	je 		_finish
_compare:
	cmp 	rcx, rbx
	jne 	_finish
	inc 	rax
	jmp		_check

_finish:
	sub 	rcx, rbx
	mov 	rax, rcx
	ret
