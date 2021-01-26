
section .text
		global _ft_strdup
		extern _malloc
		extern _ft_strlen
		extern _ft_strcpy
		extern ___error

_ft_strdup:
	call	_ft_strlen
	inc 	rax
	push	rdi
	mov		rdi, rax
	call	_malloc
	cmp		rax, 0
	je		_err
	pop		rdi
	mov		rsi, rdi
	mov 	rdi, rax
	call	_ft_strcpy
	ret

_err:
    call ___error
    mov rdi, 12
    mov [rax], rdi
    mov rax, 0
    ret