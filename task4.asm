section .data
    sensor_value db 0        ; Simulated sensor value
    motor_status db 0        ; Motor ON/OFF
    alarm_status db 0        ; Alarm ON/OFF

section .text
    global _start

_start:
    ; Read sensor value
    mov al, [sensor_value]
    cmp al, 50
    jg trigger_alarm
    cmp al, 20
    jg start_motor
    jmp stop_motor

start_motor:
    mov byte [motor_status], 1
    mov byte [alarm_status], 0
    jmp exit

trigger_alarm:
    mov byte [alarm_status], 1
    mov byte [motor_status], 0
    jmp exit

stop_motor:
    mov byte [motor_status], 0
    mov byte [alarm_status], 0

exit:
    ; Exit program
    mov eax, 1
    int 0x80
