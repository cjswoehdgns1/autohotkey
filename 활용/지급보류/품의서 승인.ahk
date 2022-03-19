#SingleInstance force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

/*
F3 지급보류해지품의서 옮기기
F5 지급보류 계정 코스트 자동작성
F1 품의서승인
*/

F1::
CoordMode, mouse, Screen
MouseClick, l, 1975, 87
Sleep, 500
Send, {Tab}
Sleep, 500
SendInput, 승인합니다{enter}{enter}전표번호 : ^v
Sleep, 500
MouseMove, 2384, 495
return


/*
F3::
CoordMode, mouse, Screen
MouseClick, l, 3178, 298
return
*/
/*
F1::
WinRestore, 전자세금계산서 지급보류 해지품의서 - Chrome
WinActivate, 전자세금계산서 지급보류 해지품의서 - Chrome
WinMove, 전자세금계산서 지급보류 해지품의서 - Chrome, , -1091, 0
WinMaximize, 전자세금계산서 지급보류 해지품의서 - Chrome
return
*/
F12::
ExitApp

/*
F1::
CoordMode, mouse, screen
Sleep, 500
MouseClick l, , , 3 ;계정코드
Sleep, 500
send, ^c
Sleep, 500
Send, !{Tab}
Sleep, 500
Send, {F2}
Sleep, 500
send, ^v
Sleep, 500
Send, {Tab}
Sleep, 500
MouseClick, l, 0, 30, 3, , , R ; 계정명
Sleep, 500
send, ^c
Sleep, 500
Send, !{Tab}
Sleep, 500
Send, {F2}
Sleep, 500
send, ^v
Sleep, 500
Send, {Tab}
Sleep, 500
MouseClick, l, 0, 30, 3, , , R ; 계정명
Sleep, 500
send, ^c
Sleep, 500
Send, !{Tab}
Sleep, 500
Send, {F2}
Sleep, 500
send, ^v
return



