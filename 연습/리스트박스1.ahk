#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

Gui, Add, ListBox, x10 y10 w100 h110 vList, ���|������|�ٳ���|������

Gui, Add, CheckBox, x20 y120 w90 h20 vFst, ��¸��
Gui, Add, CheckBox, x120 y120 w100 h20 vSec, �������

Gui, Add, Button, x120 y10 w100 h100 gbtn, ���/�����

Gui, Show, w230 h150, ���չ���
return


btn:
gui, Submit, nohide
if (Fst = 1 && Sec = 1)
MsgBox, �Ѱ��� �����Ͽ� �ֽʽÿ�
else if (Fst = 0 && Sec = 0)
MsgBox, �Ѱ��� �����Ͽ� �ֽʽÿ�
else if (Fst = 1)
MsgBox, % list
else if (Sec = 1)
SendMessage, 0x184, , ,listbox1


return


GuiClose:
ExitApp

