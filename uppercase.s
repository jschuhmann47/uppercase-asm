SYS_EXIT equ 60
SYS_WRITE equ 1
STDOUT equ 1

; rdi, rsi, rdx, r10, r8, and r9 for the parameters
; https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl

section .data

section .text
  global _main

_main:
  mov rdi, [rsp]
  add rdi, 48
  push rdi
  mov rax, SYS_WRITE
  mov rdi, STDOUT 
  mov rsi, rsp
  mov rdx, 1
  syscall
  call .exit

.exit:
  mov rax, SYS_EXIT
  mov rdi, 0
  syscall

