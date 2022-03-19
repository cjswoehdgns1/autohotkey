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
Gui, Add, Button, x95 y50 w96 h30 gBtn , 누른다!
Gui, Add, Button, x95 y50 w96 h30 gBtn1 , 정지한다!
GuiControl, hide, button15
Gui, Add, Edit, x-1 y90 w999 h20 Disabled vEdit, 현재 상태: 준비 중
Gui, Show, w291 h109, 굴러간다!
return



Btn:
GuiControl, , Edit, 현재 상태: 굴리는 중
GuiControl, hide, button14
GuiControl, show, button15
f(1)

Btn1:
GuiControl, , Edit, Button15, 누른다!
GuiControl, , Edit, 현재 상태: 준비 중
Pause,,1
return





GuiClose:
ExitApp