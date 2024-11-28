section .data
    prompt db "Enter 5 integers separated by space: ", 0
    reversed_msg db "Reversed array: ", 0

section .bss
    array resb 20 ; Storage for 5 integers (4 bytes each)

section .text
    global _start

_start:
    ; Prompt user for input
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, len prompt
    int 0x80

    ; Read array input
    mov eax, 3
    mov ebx, 0
    mov ecx, array
    mov edx, 20
    int 0x80

    ; Reverse array in place
    mov ecx, 0              ; Start index
    mov edx, 4              ; End index
reverse_loop:
    cmp ecx, edx
    jge reverse_done        ; Exit loop if start >= end
    ; Swap elements at ecx and edx
    mov eax, [array + ecx * 4]
    mov ebx, [array + edx * 4]
    mov [array + ecx * 4], ebx
    mov [array + edx * 4], eax
    inc ecx                 ; Increment start index
    dec edx                 ; Decrement end index
    jmp reverse_loop

reverse_done:
    ; Print reversed array message
    mov eax, 4
    mov ebx, 1
    mov ecx, reversed_msg
    mov edx, len reversed_msg
    int 0x80

    ; Print reversed array
    ; (Add loop here to output the array)
    
    ; Exit program
    mov eax, 1
    int 0x80
