SYS_EXIT equ 60
SYS_WRITE equ 1
STDOUT equ 1

; rdi, rsi, rdx, r10, r8, and r9 for the parameters
; https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl

section .data
  msg db "Hello"
  len equ 5

global _start

section .text
_start:
  mov rax, SYS_WRITE
  mov rdi, STDOUT
  mov rsi, msg
  mov rdx, len
  syscall

  mov rax, SYS_EXIT
  mov rdi, 0
  syscall

