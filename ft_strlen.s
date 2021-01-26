section .text
		global  _ft_strlen
_ft_strlen:
	mov		rax, 0				 ; setting the return value to 0

_compare:
	cmp		byte [rdi + rax], 0 ; copmapring the current byte and 0
	je		_finish				; once done break out of the loop
	inc 	rax					; increae the count in case it's ot hte end of the string
	jmp		_compare			; go back and compare te next byte

_finish:
	ret							; return rax with the length

