#SingleInstance, Force

Gui, Add, ListBox, x10 y10 w100 h60 vList, ��ä��|����|������ǰ|��Ÿ
Gui, Add, Edit, x10 y70 w150 h20 vFst, ��Ÿ ǰ�� �Է�
GuiControl, Disable, Fst
Gui, Add, Button, x120 y15 w70 h45 gbtn, �����
Gui, Show, w200 h100, ǰ�� ����
Gui, +AlwaysOnTop
return

btn:
Gui, submit, nohide
GuiControl, Disable, Fst
Guicontrol, , Fst, ��Ÿ ǰ�� �Է�
if (list = "��ä��")
{
FileDelete, ǰ��
FileAppend, ���`, ���`, ����`, ��, ǰ��
FileRead, v��ä��, ǰ��
MsgBox, 262144, ,% v��ä��
}
else if (List = "����")
{
FileDelete, ǰ��
FileAppend, ����`, ��`, ��`, ����, ǰ��
FileRead, v����, ǰ��
MsgBox, 262144, ,% v����
}
else if (List = "������ǰ")
{
FileDelete, ǰ��
FileAppend, ���`, ����`, �����, ǰ��
FileRead, v������ǰ, ǰ��
MsgBox, 262144, ,% v������ǰ
}
else if (List = "��Ÿ")
{
GuiControl, enable, Fst
FileDelete, ǰ��
FileAppend, % Fst, ǰ��
FileRead, v��Ÿ, ǰ��
MsgBox, 262144, ,% v��Ÿ
}
else
msgbox, 262144, ���չ���, �׸��� �������ּ���.
return

GuiClose:
ExitApp