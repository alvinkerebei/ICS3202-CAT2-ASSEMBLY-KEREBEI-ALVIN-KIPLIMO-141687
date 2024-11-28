section .data
    prompt db "Enter a number: ", 0
    positive_msg db "The number is POSITIVE", 0
    negative_msg db "The number is NEGATIVE", 0
    zero_msg db "The number is ZERO", 0

section .bss
    input resb 4

section .text
    global _start

_start:
    ; Print prompt
    mov edx, len prompt
    mov ecx, prompt
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Read user input
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, 4
    int 0x80

    ; Convert input to integer
    mov eax, [input]
    cmp eax, 0
    je zero
    jl negative
    jmp positive

positive:
    ; Print positive message
    mov eax, 4
    mov ebx, 1
    mov ecx, positive_msg
    mov edx, len positive_msg
    int 0x80
    jmp exit

negative:
    ; Print negative message
    mov eax, 4
    mov ebx, 1
    mov ecx, negative_msg
    mov edx, len negative_msg
    int 0x80
    jmp exit

zero:
    ; Print zero message
    mov eax, 4
    mov ebx, 1
    mov ecx, zero_msg
    mov edx, len zero_msg
    int 0x80

exit:
    ; Exit program
    mov eax, 1
    int 0x80
