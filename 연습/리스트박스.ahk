#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

Gui, Add, ListBox, x10 y10 w130 h60 vList, 항목1|항목2|항목3|항목4
Gui, Add, Button, x150 y10 w70 h50 gBtn, 뭐 선택?
Gui, Show, w230 h70, 57강
return

Btn:
Gui, Submit, NoHide
MsgBox, %Fst%
return

GuiClose:
ExitApp