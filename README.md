# assembly_playground

# Needed for coding in assembly language (Only checked in Windows 10 64bit)<br/>
  If environment is win32(x86) 32bit<br/>
    ・x86 Native Tools Command Promprt for VS 2022<br/>
  If environment is win64(x86_64) 64bit<br/>
    ・x64 Native Tools Command Promprt for VS 2022<br/>

# Windows API (Win32API memo)<br/>

  Windows 95→ANSI 1Byte<br/>
  Windows NT→Unicode 2Byte 65,536 letters<br/>
  
  kernel32.dll → function group of manage for memory(ram), process<br/>
  user32.dll → user interface<br/>
  gdi32.dll → graphic processing<br/>
  
  some function names are almost same but different in the tail of letter:<br/>
  (This is same in C when you use WINAPI)<br/>
  "A"→Windows 95<br/>
  "W"→Windows NT<br/>

# How to assemble and make (Tested in ml.exe only)<br/>
  ・Make object file by assembling.<br/>
  e.g. ml /c /coff /Cp ./(target).asm<br/>

  ・Link the object file to make executable file.<br/>
  e.g. link /subsystem:windows ./(target).obj kernel32.lib user32.lib<br/>

# Memo
  Windows3.1(MS-DOS) → Windows 95<br/>
     i8086 16bit → i80386 32bit<br/>
  (Pay attention to assembler function is changed by cpu when you refer to some documents)
