.586
PUBLIC _triangle@12
.model flat
.code
_triangle@12 proc
    mov eax, [esp+4]
    mov ebx, [esp+8]
    adc eax, ebx
    jc _success
    mov ecx, [esp+12]
    cmp eax, ecx
    jng _fail
    jmp _success
    _success :
    mov eax, 1
    jmp _end;
    _fail:
    mov eax, 0
    _end:
ret 12
_triangle@12 endp
end