#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


; Alt : !
; Ctrl : ^
; shift : +
; Win : #

^+1::
Send, eland19030.
return

^+2::
Send, 08029622aA{!}
return

^F4::
ExitApp