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

LoopSG()
{
	global stormFlag, counter

	if (stormFlag < 1) {
		SetTimer, LoopSG, 1000
		counter := 0
		return
	}

	counter := counter + 1

	if (counter > 10) {
		counter := 0
		;ControlSend,,{W}, ahk_exe Ragexe.exe
	}

	Storm()
	SetTimer, LoopSG, 500
}

^!z::
stormFlag := 1
LoopSG()
return

Storm()
{
	;ControlSend,,{T}, ahk_exe Ragexe.exe
	ControlSend,,{F9}, ahk_exe Ragexe.exe
	Click, Down
	sleep 100
	Click, Up
	return
}

;!d::
;stormFlag := 1 - stormFlag
;SoundBeep, 250 + stormFlag * 250, 500
;return

;f1::
;sleep 50
;ControlSend,,{Enter}, ahk_exe Ragexe.exe
;return

!f::
;MsgBox, Hello.

WinGet, var, PID, A
MsgBox, %var%
;ControlSend,,{T}, ahk_exe Ragexe.exe
;Click, Down
;sleep 100
;Click, Up
return


^!=::
ExitApp

^!x::
Reload
return