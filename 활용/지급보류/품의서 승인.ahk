#SingleInstance force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

/*
F3 ���޺�������ǰ�Ǽ� �ű��
F5 ���޺��� ���� �ڽ�Ʈ �ڵ��ۼ�
F1 ǰ�Ǽ�����
*/

F1::
CoordMode, mouse, Screen
MouseClick, l, 1975, 87
Sleep, 500
Send, {Tab}
Sleep, 500
SendInput, �����մϴ�{enter}{enter}��ǥ��ȣ : ^v
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
WinRestore, ���ڼ��ݰ�꼭 ���޺��� ����ǰ�Ǽ� - Chrome
WinActivate, ���ڼ��ݰ�꼭 ���޺��� ����ǰ�Ǽ� - Chrome
WinMove, ���ڼ��ݰ�꼭 ���޺��� ����ǰ�Ǽ� - Chrome, , -1091, 0
WinMaximize, ���ڼ��ݰ�꼭 ���޺��� ����ǰ�Ǽ� - Chrome
return
*/
F12::
ExitApp

/*
F1::
CoordMode, mouse, screen
Sleep, 500
MouseClick l, , , 3 ;�����ڵ�
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
MouseClick, l, 0, 30, 3, , , R ; ������
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
MouseClick, l, 0, 30, 3, , , R ; ������
Sleep, 500
send, ^c
Sleep, 500
Send, !{Tab}
Sleep, 500
Send, {F2}
Sleep, 500
send, ^v
return



