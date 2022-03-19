#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

Gui, Add, ListBox, x10 y10 w100 h110 vList, 사과|오렌지|바나나|복숭아

Gui, Add, CheckBox, x20 y120 w90 h20 vFst, 출력모드
Gui, Add, CheckBox, x120 y120 w100 h20 vSec, 지우기모드

Gui, Add, Button, x120 y10 w100 h100 gbtn, 출력/지우기

Gui, Show, w230 h150, 종합문제
return


btn:
gui, Submit, nohide
if (Fst = 1 && Sec = 1)
MsgBox, 한개만 선택하여 주십시오
else if (Fst = 0 && Sec = 0)
MsgBox, 한개는 선택하여 주십시오
else if (Fst = 1)
MsgBox, % list
else if (Sec = 1)
SendMessage, 0x184, , ,listbox1


return


GuiClose:
ExitApp

