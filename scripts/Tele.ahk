#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode 2
SetTitleMatchMode Slow
DetectHiddenText, On

init:
;MsgBox, Hello.
number := 1
counter := 0
cd := 600
stormFlag := 0
TestStr := "zzzzzz"
SoundBeep 250
SoundBeep 750
return

~f1::
Sleep 400
ControlSend,,{Enter}, ahk_exe Ragexe.exe
return

^!=::
ExitApp

^!x::
Reload
return