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
Send, {Enter}
Sleep 500
send, !d
Sleep 500
send, c
Sleep 500
Send, +{F8}
return


F2::
Pause

F4::
ExitApp