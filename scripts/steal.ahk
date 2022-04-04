#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

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

f::
ControlSend,,{d}, ahk_exe Ragexe.exe
Click
sleep 20
return

^!=::
ExitApp

^!x::
Reload
return