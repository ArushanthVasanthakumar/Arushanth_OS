; bootloader.asm
[org 0x7c00]         ; BIOS loads boot sector to 0x7C00

start:
    mov si, message  ; SI points to the message

print_loop:
    lodsb            ; Load byte at DS:SI into AL, increment SI
    cmp al, 0        ; End of string?
    je hang          ; If AL == 0, jump to end
    mov ah, 0x0E     ; BIOS teletype function
    int 0x10         ; Print AL
    jmp print_loop   ; Loop

hang:
    jmp $            ; Infinite loop

message db 'Welcome Arushanth OS', 0

; Padding to fill 512-byte boot sector
times 510 - ($ - $$) db 0
dw 0xAA55            ; Boot signature
