Gui, Add, Checkbox, x10 y10 w130 h20 vFirst, ù ��° üũ�ڽ�
Gui, Add, Checkbox, x10 y40 w130 h20 vSecond, �� ��° üũ�ڽ�
Gui, Add, Button, x150 y10 w70 h50 gBtn, �� üũ?
Gui, Show, w230 h70, 55��
return

Btn:
Gui, Submit, NoHide
MsgBox, ù ��°: %First%`n�� ��°: %Second%
return

GuiClose:
ExitApp