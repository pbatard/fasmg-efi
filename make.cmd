@echo off
set include=include
del /q hello.efi
fasmg efi64.asm efi64.efi
if %errorlevel% neq 0 goto end

set UEFI_EXT=x64
set QEMU_ARCH=x86_64

set QEMU_PATH=C:\Program Files\qemu\
set QEMU_OPTS=-net none -monitor none -parallel none
set QEMU_EXE=qemu-system-%QEMU_ARCH%w.exe
set BOOT_NAME="boot%UEFI_EXT%.efi"
set OVMF_BIOS="OVMF.fd"

if not exist image\efi\boot mkdir image\efi\boot
copy efi64.efi image\efi\boot\boot%UEFI_EXT%.efi >NUL
"%QEMU_PATH%%QEMU_EXE%" %QEMU_OPTS% -L . -bios %OVMF_BIOS% -hda fat:image
del /q trace-*
:end
