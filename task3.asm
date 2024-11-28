section .data
    prompt db "Enter a number to compute factorial: ", 0
    result_msg db "Factorial result: ", 0

section .bss
    input resb 4

section .text
    global _start

_start:
    ; Print prompt
    ; (Similar to Task 1)

    ; Call factorial subroutine
    mov eax, [input]       ; Input number
    call factorial         ; Calculate factorial
    ; Result stored in eax

    ; Print result
    ; (Output logic here)

    ; Exit program
    mov eax, 1
    int 0x80

factorial:
    push ebp
    mov ebp, esp
    push eax              ; Save input
    mov ecx, eax
    dec ecx
    factorial_loop:
        cmp ecx, 1
        jle factorial_done
        mul ecx
        dec ecx
        jmp factorial_loop
    factorial_done:
        pop eax            ; Restore input
        mov esp, ebp
        pop ebp
        ret
