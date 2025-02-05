.386
.model flat,stdcall
option casemap:none

MessageBoxW PROTO STDCALL :DWORD,:DWORD,:DWORD,:DWORD
ExitProcess PROTO STDCALL :DWORD

.data
title1   dw "h","e","l","l","o",10,0
message1 dw "w","o","r","l","d","!",10,0

.code
start:
invoke MessageBoxW, 0, addr message1, addr title1, 0h
invoke ExitProcess, 0
end start