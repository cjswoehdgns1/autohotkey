#SingleInstance force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

/*
global xlFile := "C:\Users\lee_donghun03\Desktop\업무\KA\일괄등록리스트\01~06월 KA 미정산 리스트"
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
b=0 ;0=공통배부 1= 공통배부x

CoordMode, mouse, screen
Loop, %a%{
WinActivate, Microsoft Excel - 01~06월 KA 미정산 리스트
sleep, 500
Send, ^c
sleep, 500
MouseClick, l, 1184, 260, 1 ;참조전기 전표번호
sleep, 500
send, ^a
sleep, 500
send, ^v
sleep, 500
MouseClick, l, 1006, 405, 1 ;참조전기 역분개버튼
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


MouseClick, l, 1270, 358, 2 ; 전표조회개요 전기키 50
sleep, 500

;전기키 50 수정
MouseClick, l, 1153, 308, 1 ;세금코드 클릭
sleep, 500
send, ^a
send,{space}
sleep, 200
MouseClick, l, 1200, 308, 1 ;지우기 공란클릭
sleep, 200
MouseClick, l, 1153, 330, 1 ;사업장 클릭
sleep, 200
send, ^a
send,{space}
sleep, 200
MouseClick, l, 1200, 308, 1 ;지우기 공란클릭
sleep, 500
MouseClick, l, 1174, 525, 1 ;지정 클릭
sleep, 500
send, ^a
sleep, 500
SendInput, 대체완료
sleep, 500
ControlClick, Button1, 전표 전기 수정 G/L 계정항목
sleep, 500
send, {Enter}
sleep, 500
send, {Enter}
sleep, 500

;전표전기 조회화면
MouseClick, l, 1077, 906, 1 ;전기키 클릭
sleep, 500
SendInput, 40
sleep, 500
WinActivate, Microsoft Excel - 01~06월 KA 미정산 리스트
sleep, 500
send, {Right}{Right}^c
sleep, 500
MouseClick, l, 1185, 906 ; 계정클릭
sleep, 500
send, ^v
sleep, 500
send, {Enter}
sleep, 500

; 전기키 40
MouseClick, l, 1160, 282, 1 ; 금액
sleep, 500
Send, {*}
sleep, 500
WinActivate, Microsoft Excel - 01~06월 KA 미정산 리스트
sleep, 500
send, {Right}{Right}^c
sleep, 500
MouseClick, l, 1151, 380, 1 ;코스트센터
sleep, 500
send, ^v
sleep, 500
ControlClick, Button1, 전표 전기 추가 G/L 계정항목
sleep, 500
send, {Enter}
sleep, 500
send, {Enter}
sleep, 1500

;전표전기 조회 개요
MouseClick, l, 1155, 282, 1 ; 전표헤더텍스트
sleep, 500
send, ^a
sleep, 500
send,{space}
sleep, 500
WinActivate, Microsoft Excel - 01~06월 KA 미정산 리스트
sleep, 1500
send, {left 4}
send, ^c
MouseClick, l, 1155, 282, 1 ; 전표헤더텍스트
send, KA전표대체_^v

Sleep, 3000

send, ^s
sleep, 500
Send, ^c
sleep, 500
WinActivate, Microsoft Excel - 01~06월 KA 미정산 리스트
sleep, 500
Send {Right}
sleep, 500
Send, ^v
sleep, 500
send, {down}{left}
}
MsgBox, 총%a% 지급보류해지 처리 완료
return

F4::
Pause

Esc::
ExitApp