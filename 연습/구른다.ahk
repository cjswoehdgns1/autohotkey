#SingleInstance, Force

varinitxx(ByRef a)
	{
	a := 1
	}

f(a)
{
	Loop
	{
		loop 18
		{
		b := A_Index -4
		GuiControl, , Set%a%, 1
		Sleep, 200
		GuiControl, , Set%b%, 0
		a++
		}
			if (a > 13)
			varinitxx(a)
	}
}


Loop, 13
{
    a := A_index * 20
    gui, add, Checkbox, x%a% y20 w20 h20 vSet%A_index%,
}
Gui, Add, Button, x95 y50 w96 h30 gBtn , ������!
Gui, Add, Button, x95 y50 w96 h30 gBtn1 , �����Ѵ�!
GuiControl, hide, button15
Gui, Add, Edit, x-1 y90 w999 h20 Disabled vEdit, ���� ����: �غ� ��
Gui, Show, w291 h109, ��������!
return



Btn:
GuiControl, , Edit, ���� ����: ������ ��
GuiControl, hide, button14
GuiControl, show, button15
f(1)

Btn1:
GuiControl, , Edit, Button15, ������!
GuiControl, , Edit, ���� ����: �غ� ��
Pause,,1
return





GuiClose:
ExitApp