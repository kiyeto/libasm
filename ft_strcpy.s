section .text
		global  _ft_strcpy
_ft_strcpy:
	mov		rax, 0

_compare:
	cmp     byte [rsi + rax], 0
	je     _finish
_cpy:
	mov		dl, byte [rsi + rax]
	mov		byte [rdi + rax], dl
	inc 	rax
	jmp		_compare

_finish:
	mov		byte [rdi + rax], 0
	mov		rax, rdi
	ret