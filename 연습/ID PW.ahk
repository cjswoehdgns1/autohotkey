#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

Gui, show, w220 h60
Gui, add, edit, w120 h20 vid, cjswoehdgns1
Gui, add, edit, w120 h20 vpw, 08029622aA!
Gui, add, Button, x140 y5 w60 h47 gbtn, 대화상자
return

btn:
gui, submit, nohide
msgbox, ID `: %id%`nPW `: %pw%
return

F1::
SendRaw, % id
Send, {Tab}
SendRaw, % pw
return

GuiClose:
ExitApp
