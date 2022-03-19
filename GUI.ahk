#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


Gui, Add, text, x232 y78 w70 h30 , F1
Gui, Add, Text, x32 y78 w100 h30 , 마우스 반복클릭

Gui, Add, text, x232 y109 w70 h30 , F2
Gui, Add, Text, x32 y109 w100 h30 , 좌표설정

Gui, Add, text, x232 y140 w70 h30 , F3
Gui, Add, Text, x32 y140 w100 h30 , 지정된 위치 클릭
Gui, Add, text, x332 y140 w70 h30 , %xx%, %yy%

Gui, Add, text, x232 y171 w70 h30 , F4
Gui, Add, text, x32 y171 w70 h30 , 중지

Gui, Show, w479 h379, 오토마우스

return

F1::
InputBox, a, 딜레이를 설정하세요, 1=1밀리초
Loop{
MouseClick, l
sleep, %a%
}
return

F2::
CoordMode, mouse, screen
MouseGetPos, xx, yy
return

F3::
CoordMode, mouse, screen
MouseClick, l, %xx%, %yy%
return

F4::
Pause

GuiClose:
ExitApp




