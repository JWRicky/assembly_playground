﻿# assembly_playground

# Needed for coding in assembly language (Only checked in Windows 10 64bit)
  If environment is win32(x86) 32bit
    ・x86 Native Tools Command Promprt for VS 2022
  If environment is win64(x86_64) 64bit
    ・x64 Native Tools Command Promprt for VS 2022

# Windows API (Win32API memo)

  Windows 95→ANSI 1Byte
  Windows NT→Unicode 2Byte 65,536 letters
  
  kernel32.dll → function group of manage for memory(ram), process
  user32.dll → user interface
  gdi32.dll → graphic processing
  
  some function names are almost same but different in the tail of letter:
  (This is same in C when you use WINAPI)
  "A"→Windows 95
  "W"→Windows NT

# How to assemble and make (Tested in ml.exe only)
  ・Make object file by assembling.
  e.g. ml /c /coff /Cp ./(target).asm

  ・Link the object file to make executable file.
  e.g. link /subsystem:windows ./(target).obj kernel32.lib user32.lib
