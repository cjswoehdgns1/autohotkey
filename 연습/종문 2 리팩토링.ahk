#SingleInstance, Force

Gui, Add, ListBox, x10 y10 w100 h60 vList, ��ä��|����|������ǰ|��Ÿ
Gui, Add, Edit, x10 y70 w150 h20 vFst, ��Ÿ ǰ�� �Է�
GuiControl, Disable, Fst
Gui, Add, Button, x120 y15 w70 h45 gbtn, �����
Gui, Show, w200 h100, ǰ�� ����
Gui, +AlwaysOnTop

f(list)
{
if (list = "��ä��")
x = ���`, ���`, ����`, ��
else if (list = "����")
x = ����`, ��`, ��`, ����
else if (list = "������ǰ")
x = ���`, ����`, �����
FileDelete, ǰ��
FileAppend, % x, ǰ��
FileRead, b, ǰ��
MsgBox, 262144, ,% b
}
return

btn:
Gui, submit, nohide
GuiControl, Disable, Fst
Guicontrol, , Fst, ��Ÿ ǰ�� �Է�

if (List = "��Ÿ")
{
x = % Fst
GuiControl, enable, Fst
FileDelete, ǰ��
FileAppend, % x, ǰ��
FileRead, b, ǰ��
MsgBox, 262144, ,% b
}

else if (list = "")
msgbox, 262144, ���չ���, �׸��� �������ּ���.

else
f(list)
return

GuiClose:
ExitApp