#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

F1::
CoordMode, mouse, screen
CoordMode, Pixel, screen
Send, ^c
Sleep, 500
ImageSearch, XX, YY, -1280, 0, 1920, 1080, C:\Users\lee_donghun03\Desktop\AUTO\auto\���̵�.png
Sleep, 500
if errorlevel = 0
	{
	MouseClick, l, % XX + 70, % YY
	Send, ^v
	}
Sleep, 500
MouseClick, l, % XX + 70, % YY +40
Sleep, 500
SendInput, eland19030{!}
Sleep, 500
ImageSearch, XX, YY, -1280, 0, 1920, 1080, C:\Users\lee_donghun03\Desktop\AUTO\auto\�α���.png
Sleep, 500
if errorlevel = 0
	MouseClick, l, % XX , % YY
Sleep, 5000
ImageSearch, XX, YY, -1280, 0, 1920, 1080, C:\Users\lee_donghun03\Desktop\AUTO\auto\�ΰ���ġ��.png
Sleep, 500
if errorlevel = 0
	MouseClick, l, % XX , % YY

return



F4::
ExitApp

