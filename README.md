# Arushanth_OS
Welcome Arushanth OS is a minimal real-mode operating system developed in x86 Assembly. It demonstrates the basics of the boot process by printing a welcome message using BIOS interrupts. This is my first step into understanding how operating systems work at the lowest level — starting right from the bootloader.  


Tools Used

- Ubuntu 24.04 via WSL
- NASM (Netwide Assembler)
- QEMU (Quick Emulator)

---
📂 Folder Structure
Welcome Arushanth-os/
├── bootloader.asm # Source code (Assembly)
├── bootloader.bin # Compiled bootable binary


How to Run

1. Install Dependencies
sudo apt update
sudo apt install nasm qemu

2. Clone the Repository
git clone https://github.com/ArushanthVasanthakumar/Arushanth_OS.git
cd Welcome Arushanth

3. Assemble the Bootloader
nasm -f bin bootloader.asm -o bootloader.bin

4. Run It in QEMU
qemu-system-x86_64 -drive format=raw,file=bootloader.bin
hello, welcome Welcome Arushanth os
