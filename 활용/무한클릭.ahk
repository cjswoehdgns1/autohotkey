#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


; Alt : !
; Ctrl : ^
; shift : +
; Win : #

f1::
LOOP
{
MouseClick, L
sleep 500
}
return

F2::
Pause
return

F4::
ExitApp