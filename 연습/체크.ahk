Gui, Add, Checkbox, x10 y10 w130 h20 vFirst, 첫 번째 체크박스
Gui, Add, Checkbox, x10 y40 w130 h20 vSecond, 두 번째 체크박스
Gui, Add, Button, x150 y10 w70 h50 gBtn, 뭐 체크?
Gui, Show, w230 h70, 55강
return

Btn:
Gui, Submit, NoHide
MsgBox, 첫 번째: %First%`n두 번째: %Second%
return

GuiClose:
ExitApp