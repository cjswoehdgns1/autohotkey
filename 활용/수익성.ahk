#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

F1::
CoordMode, mouse, screen
Loop, 40
{
Sleep, 2000
Send, {enter}
Sleep, 2000
Send, {enter}
Sleep, 2000
MouseClick, l, 2481, 444
Sleep, 2000
Send, {enter}
Sleep, 2000 
Send, {enter}
Sleep, 3000 
}
return

F3::
Pause
return

F4::
ExitApp