#SingleInstance force
DetectHiddenWindows,On
SetTitleMatchMode, slow

;CoordMode, mouse, screen
/*
#1:: ; ��Ʈ + 1 ������ǥ ����
CoordMode, mouse, screen
MouseGetPos, xx, yy
send, %xx%, %yy%
return

#2:: ; ��Ʈ + 2 �����ǥ ����
MouseGetPos, xx, yy
send, %xx%, %yy%
return
*/
+1::

a=1

Loop, %a%{
WinRestore, Microsoft Excel - ����� �����_�̵���
WinActivate, Microsoft Excel - ����� �����_�̵���
WinWait, Microsoft Excel - ����� �����_�̵���
Sleep 500
send ^c
Sleep 500

WinRestore, ahk_class IEFrame
WinActivate, ahk_class IEFrame
WinWait, ahk_class IEFrame

MouseClick, l, 920, 264

Sleep 7000 ; ���� ������ �ʿ��� �� �ε��ð��� �ʹ� ���߳��� ;;


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



WinRestore, Microsoft Excel - ����� �����_�̵���
WinActivate, Microsoft Excel - ����� �����_�̵���
WinWait, Microsoft Excel - ����� �����_�̵���
Sleep 500
send, {down}

}


return
F2::
Pause

F4::
ExitApp