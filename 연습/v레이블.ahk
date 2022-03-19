#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


Gui, Add, Edit, x10 y10 w180 h20 vedit, 입력해주세요
Gui, Add, Button, x10 y40 w180 h20 gBtn, 출력하기
Gui, Show, w200 h70, 52강
return

Btn:
Gui, Submit, NoHide
MsgBox, %edit%
return

GuiClose:
ExitApp


F4::
ExitApp