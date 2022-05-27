#SingleInstance force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

F1::
Send, ^c
return

F2::
Send, ^v
return

F3::
Send, {enter}
return

F4::
Send, ^a
return

F12::
ExitApp