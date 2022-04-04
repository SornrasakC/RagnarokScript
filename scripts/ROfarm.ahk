#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode 2
SetTitleMatchMode Slow
DetectHiddenText, On

init:
MsgBox, Hello.
number := 1
cd := 600
return

Driver()
{
	Click Down
	sleep 50
	Click Up
	
	sleep 500
	
	ControlSend,,{Enter}, ahk_exe Ragexe.exe
	sleep 500
	ControlSend,,{Enter}, ahk_exe Ragexe.exe
	sleep 500
	ControlSend,,{Down}, ahk_exe Ragexe.exe
	sleep 100
	ControlSend,,{Enter}, ahk_exe Ragexe.exe
	sleep 500
	ControlSend,,{Enter}, ahk_exe Ragexe.exe
	sleep 500
	ControlSend,,{Enter}, ahk_exe Ragexe.exe
	sleep 500
	ControlSend,,{Enter}, ahk_exe Ragexe.exe
	sleep 500
	ControlSend,,4, ahk_exe Ragexe.exe
	sleep 100
	ControlSend,,{Enter}, ahk_exe Ragexe.exe
	sleep 500
	ControlSend,,{Enter}, ahk_exe Ragexe.exe
	sleep 500
	ControlSend,,{Enter}, ahk_exe Ragexe.exe
	sleep 500
	ControlSend,,{Enter}, ahk_exe Ragexe.exe
	sleep 490
	SetTimer, Driver, 10
	return
}

^!z::
SetTimer, Ender, 840000
Driver()
return

Ender()
{
Reload
return
}

!d::
;MsgBox, eiei
;ControlSend,,{Enter}, ahk_exe Ragexe.exe
;ControlSend,,{Down}, ahk_exe Ragexe.exe
;Click Down
;sleep 50
;Click Up
ControlSend,,4, ahk_exe Ragexe.exe
return

!f::
;MsgBox, Hello.
ControlSend,,{Enter}, ahk_exe Ragexe.exe

return


^!=::
ExitApp

^!x::
Reload
return

