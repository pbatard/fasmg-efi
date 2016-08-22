fasmg-efi - A simple UEFI sample in fasmg x86_64 assembly
=========================================================

## Prerequisites

* [flat assembler g (fasmg)](http://flatassembler.net/download.php) (make sure
  to download the 'g' version)
* [QEMU](http://www.qemu.org) __v2.5 or later__
  (NB: You can find QEMU Windows binaries [here](https://qemu.weilnetz.de/w64/))
* git

## Assembly and testing (on Windows)

* Copy this content into the `examples\x86\` directory of fasmg
* Make sure fasmg is in your path, or copy `fasmg.exe ` to the `examples\x86\`
  directory
* Run `make`
* Additionally, you can download the [latest OVMF x64](http://www.tianocore.org/ovmf/)
  and extract it into the `examples\x86\` directory, and run `make qemu`.
  Note you may have to edit `make.cmd` to set your qemu directory.
