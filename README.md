# Optimized Maximum Finder in x86 Assembly

This project demonstrates how to find the maximum value in an integer array using NASM x86 (32-bit) Assembly with a C driver program.

## 🧠 Overview
- Assembly function: `find_max(int* arr, int len)`
- Written in NASM (32-bit)
- Called from C using `extern`
- Demonstrates low-level system interfacing

## 🛠️ Build Instructions
Make sure you have NASM and GCC with 32-bit support:

```bash
sudo apt update
sudo apt install gcc-multilib g++-multilib libc6-dev-i386


nasm -f elf32 max.asm -o max.o
gcc -m32 main.c max.o -o find_max
./find_max

