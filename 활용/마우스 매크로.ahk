#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


; Alt : !
; Ctrl : ^
; shift : +
; Win : #


command1 = 11
command2 = 1123


^+1::
Send, %command1%
return

^+2::
Send, %command2%
return

^F4::
ExitApp