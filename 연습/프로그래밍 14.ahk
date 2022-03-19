#SingleInstance, Force

Loop, 13
{
    a := A_index * 20
    gui, add, Checkbox, x%a% y20 w20 h20 vSet%A_index%,
}
Gui, Add, Button, x95 y50 w96 h30 gBtn, 누른다!
Gui, Add, Edit, x-1 y90 w999 h20 Disabled vEdit, 현재 상태: 준비 중
Gui, Show, w291 h109, 굴러간다!

return

Btn:
GuiControl, , Edit, 현재 상태: 굴리는 중
	Loop
	{
	GuiControl, , Set1, 1
	Sleep, 500
	GuiControl, , Set2, 1
	Sleep, 500
	GuiControl, , Set3, 1
	Sleep, 500
	GuiControl, , Set4, 1
	Sleep, 500
	GuiControl, , Set5, 1
	Sleep, 500
	GuiControl, , Set1, 0
	GuiControl, , Set6, 1
	Sleep, 500
	GuiControl, , Set2, 0
	GuiControl, , Set7, 1
	Sleep, 500
	GuiControl, , Set3, 0
	GuiControl, , Set8, 1
	Sleep, 500
	GuiControl, , Set4, 0
	GuiControl, , Set9, 1
	Sleep, 500
	GuiControl, , Set5, 0
	GuiControl, , Set10, 1
	Sleep, 500
	GuiControl, , Set6, 0
	GuiControl, , Set11, 1
	Sleep, 500
	GuiControl, , Set7, 0
	GuiControl, , Set12, 1
	Sleep, 500
	GuiControl, , Set8, 0
	GuiControl, , Set13, 1
	Sleep, 500
	GuiControl, , Set9, 0
	Sleep, 500
	GuiControl, , Set10, 0
	Sleep, 500
	GuiControl, , Set11, 0
	Sleep, 500
	GuiControl, , Set12, 0
	Sleep, 500
	GuiControl, , Set13, 0
	Sleep, 500
	}

return

GuiClose:
ExitApp