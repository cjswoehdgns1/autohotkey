#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On



Gui, Add, Text, x32 y78 w100 h30 , 마우스 반복클릭
Gui, Add, Radio, x132 y78 gbtn1
Gui, Add, Edit, x232 y78 vDelay1 , 딜레이설정
Gui, Add, text, x152 y78 w70 h30 , F1
Gui, Add, Text, x32 y109 w100 h30 , 좌표설정
Gui, Add, Radio, x132 y109
Gui, Add, text, x232 y109 w70 h30 , F2
Gui, Add, Text, x32 y140 w100 h30 , 지정된 위치 클릭
Gui, Add, Radio, x132 y140
Gui, Add, text, x232 y140 w70 h30 , F3
Gui, Add, text, x332 y140 w70 h30 , %xx%, %yy%
Gui, Show, w479 h379, 오토마우스

return

BasicClickauto(Delay1)
{
	
	Loop
	{
	MouseClick, l
	sleep, % Delay1
	}
}

btn1:
Gui, submit, nohide
BasicClickauto(Delay1)
F1::
Gui, submit, nohide
BasicClickauto(Delay1)

F2::
CoordMode, mouse, screen
MouseGetPos, xx, yy
return

F3::
CoordMode, mouse, screen
MouseClick, l, %xx%, %yy%
return

Esc::
ExitApp

GuiClose:
ExitApp




