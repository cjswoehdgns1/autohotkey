#SingleInstance force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

/*
global xlFile := "C:\Users\lee_donghun03\Desktop\����\KA\�ϰ���ϸ���Ʈ\01~06�� KA ������ ����Ʈ"
global xl := ""
global wb := ""
global sht := ""

IfWinExist, ahk_class XLMAIN
{
	;xl := ComObjActive("Excel.Application")
	
	WinRestore, ahk_class XLMAIN
	WinActivate, ahk_class XLMAIN
}
else
{
	xl := ComObjCreate("Excel.Application")
}

xl.Visible := True
wb := xl.Workbooks.Open(xlFile)
;sht := wb.Worksheets("Sheet1")
Send, #{Left}

	WinRestore, ahk_class SAP_FRONTEND_SESSION
	WinActivate, ahk_class SAP_FRONTEND_SESSION
	Send, #{Right}

return
*/

+1::
a=5
b=0 ;0=������ 1= ������x

CoordMode, mouse, screen
Loop, %a%{
WinActivate, Microsoft Excel - 01~06�� KA ������ ����Ʈ
sleep, 500
Send, ^c
sleep, 500
MouseClick, l, 1184, 260, 1 ;�������� ��ǥ��ȣ
sleep, 500
send, ^a
sleep, 500
send, ^v
sleep, 500
MouseClick, l, 1006, 405, 1 ;�������� ���а���ư
sleep, 500
send, {Enter}
sleep, 500


if (b=0)
	{
	SendInput, 20200701
	sleep, 500
	Send,^a 
	sleep, 500
	Send,^c 
	sleep, 500
	Send,{down} 
	sleep, 500
	Send,^a 
	sleep, 500
	Send,^v
	sleep, 500
	send, {Enter}
	sleep, 500
	}
	
send, {Enter}
sleep, 1000	
SendInput, 0
send, {Enter}
sleep, 1500
send, {Enter}
sleep, 1500


MouseClick, l, 1270, 358, 2 ; ��ǥ��ȸ���� ����Ű 50
sleep, 500

;����Ű 50 ����
MouseClick, l, 1153, 308, 1 ;�����ڵ� Ŭ��
sleep, 500
send, ^a
send,{space}
sleep, 200
MouseClick, l, 1200, 308, 1 ;����� ����Ŭ��
sleep, 200
MouseClick, l, 1153, 330, 1 ;����� Ŭ��
sleep, 200
send, ^a
send,{space}
sleep, 200
MouseClick, l, 1200, 308, 1 ;����� ����Ŭ��
sleep, 500
MouseClick, l, 1174, 525, 1 ;���� Ŭ��
sleep, 500
send, ^a
sleep, 500
SendInput, ��ü�Ϸ�
sleep, 500
ControlClick, Button1, ��ǥ ���� ���� G/L �����׸�
sleep, 500
send, {Enter}
sleep, 500
send, {Enter}
sleep, 500

;��ǥ���� ��ȸȭ��
MouseClick, l, 1077, 906, 1 ;����Ű Ŭ��
sleep, 500
SendInput, 40
sleep, 500
WinActivate, Microsoft Excel - 01~06�� KA ������ ����Ʈ
sleep, 500
send, {Right}{Right}^c
sleep, 500
MouseClick, l, 1185, 906 ; ����Ŭ��
sleep, 500
send, ^v
sleep, 500
send, {Enter}
sleep, 500

; ����Ű 40
MouseClick, l, 1160, 282, 1 ; �ݾ�
sleep, 500
Send, {*}
sleep, 500
WinActivate, Microsoft Excel - 01~06�� KA ������ ����Ʈ
sleep, 500
send, {Right}{Right}^c
sleep, 500
MouseClick, l, 1151, 380, 1 ;�ڽ�Ʈ����
sleep, 500
send, ^v
sleep, 500
ControlClick, Button1, ��ǥ ���� �߰� G/L �����׸�
sleep, 500
send, {Enter}
sleep, 500
send, {Enter}
sleep, 1500

;��ǥ���� ��ȸ ����
MouseClick, l, 1155, 282, 1 ; ��ǥ����ؽ�Ʈ
sleep, 500
send, ^a
sleep, 500
send,{space}
sleep, 500
WinActivate, Microsoft Excel - 01~06�� KA ������ ����Ʈ
sleep, 1500
send, {left 4}
send, ^c
MouseClick, l, 1155, 282, 1 ; ��ǥ����ؽ�Ʈ
send, KA��ǥ��ü_^v

Sleep, 3000

send, ^s
sleep, 500
Send, ^c
sleep, 500
WinActivate, Microsoft Excel - 01~06�� KA ������ ����Ʈ
sleep, 500
Send {Right}
sleep, 500
Send, ^v
sleep, 500
send, {down}{left}
}
MsgBox, ��%a% ���޺������� ó�� �Ϸ�
return

F4::
Pause

Esc::
ExitApp