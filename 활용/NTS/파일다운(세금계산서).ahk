#SingleInstance force
DetectHiddenWindows,On
SetTitleMatchMode, slow

;CoordMode, mouse, screen
/*
#1:: ; 알트 + 1 절대좌표 설정
CoordMode, mouse, screen
MouseGetPos, xx, yy
send, %xx%, %yy%
return

#2:: ; 알트 + 2 상대좌표 설정
MouseGetPos, xx, yy
send, %xx%, %yy%
return
*/
+1::

a=1

Loop, %a%{
WinRestore, Microsoft Excel - 사업장 담당자_이동훈
WinActivate, Microsoft Excel - 사업장 담당자_이동훈
WinWait, Microsoft Excel - 사업장 담당자_이동훈
Sleep 500
send ^c
Sleep 500

WinRestore, ahk_class IEFrame
WinActivate, ahk_class IEFrame
WinWait, ahk_class IEFrame

MouseClick, l, 920, 264

Sleep 7000 ; 오류 개선이 필요할 듯 로딩시간이 너무 들쭉날쭉 ;;


WinRestore, "https://hometax.go.kr/?w2xPath=/ui/pp/a/a/UTXPPAAA25.xml&popupID=UTXPPAAA25&w2xHome=/ui/et/b/d/ - Internet Explorer"
WinActivate, "https://hometax.go.kr/?w2xPath=/ui/pp/a/a/UTXPPAAA25.xml&popupID=UTXPPAAA25&w2xHome=/ui/et/b/d/ - Internet Explorer"
MouseClick, l, 582, 151
Sleep 500
send ^v
Sleep 500
MouseClick, l, 410, 199
Sleep 500
MouseClick, l, 46, 322
Sleep 500
MouseClick, l, 437, 405
Sleep 2000
Send, {enter}
Sleep 2000
Send, {enter}
Sleep 2000
WinMaximize, ahk_class IEFrame
MouseClick, l, 955, 658

sleep, 1000
MouseClick, l, 1112, 768
sleep, 3000
MouseClick, l, 936, 661
sleep, 1000
MouseClick, l, 901, 659
sleep, 1000
Send, {enter}
sleep, 1000
MouseClick, l, 1272, 1024
sleep, 1000
MouseClick, l, 1230, 327
sleep, 1000



WinRestore, Microsoft Excel - 사업장 담당자_이동훈
WinActivate, Microsoft Excel - 사업장 담당자_이동훈
WinWait, Microsoft Excel - 사업장 담당자_이동훈
Sleep 500
send, {down}

}


return
F2::
Pause

F4::
ExitApp