#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

Gui, Add, ListBox, x10 y10 w130 h60 vList, �׸�1|�׸�2|�׸�3|�׸�4
Gui, Add, Button, x150 y10 w70 h50 gBtn, �� ����?
Gui, Show, w230 h70, 57��
return

Btn:
Gui, Submit, NoHide
MsgBox, %Fst%
return

GuiClose:
ExitApp