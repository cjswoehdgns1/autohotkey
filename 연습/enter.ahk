#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

CoordMode, mouse, screen

F1::
SendInput, eland19030.
return

F2::
Loop
{
MouseClick, l
Sleep, 500
}
return

F3::
SendInput, 23
return

F4::
Pause
return

F12::
ExitApp