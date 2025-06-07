
section .text
    global find_max

find_max:
    push ebp
    mov ebp, esp
    push esi
    push edi

    mov esi, [ebp + 8]     ; esi = arr pointer
    mov ecx, [ebp + 12]    ; ecx = length
    test ecx, ecx
    jz .done               ; If length == 0, return 0

    mov eax, [esi]         ; eax = max = arr[0]
    add esi, 4             ; point to arr[1]
    dec ecx                ; one element already considered

.loop:
    cmp ecx, 0
    jle .done

    mov edi, [esi]         ; load current element
    cmp edi, eax
    jle .skip              ; skip if not greater
    mov eax, edi           ; update max

.skip:
    add esi, 4
    dec ecx
    jmp .loop

.done:
    pop edi
    pop esi
    pop ebp
    ret

