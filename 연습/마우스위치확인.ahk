#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


; Alt : !
; Ctrl : ^
; shift : +
; Win : #

F2::
Pause

F3::
MouseGetPos, vX, vY
Send, % vX vY
return

F4::
ExitApp



