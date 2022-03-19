#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


; Alt : !
; Ctrl : ^
; shift : +
; Win : #

F1::
send, ^+{F5}
Sleep, 500
CoordMode, mouse, screen
MouseClick, l, 735, -580
Sleep, 500
send, ^a
Sleep, 500
SendInput, ZB
Sleep, 500
Send, ^s
Sleep, 500
Send, {enter}
Sleep, 500
Send, {F3}
return

F2::
CoordMode, mouse, screen
MouseClick, l, 864, -768
Sleep, 500
Send, +{space}
Sleep, 1000
Send, {F1}
Sleep, 500
return

F4::
ExitApp