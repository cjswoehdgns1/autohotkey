#SingleInstance force
DetectHiddenWindows,On
SetTitleMatchMode, slow

;CoordMode, mouse, screen



+1::
a=8
Loop, %a%{
;WinRestore, Microsoft Excel - 사업장 담당자_이동훈
WinActivate, Microsoft Excel - 사업장 담당자_이동훈

;WinMaximize, Microsoft Excel - 사업장 담당자_이동훈
WinWait, Microsoft Excel - 사업장 담당자_이동훈
Sleep 500
send ^c
Sleep 500

;WinRestore, ahk_class IEFrame
WinActivate, ahk_class Chrome_WidgetWin_1
;WinMaximize, ahk_class IEFrame
WinWait, ahk_class Chrome_WidgetWin_1

CoordMode, pixel, screen
CoordMode, mouse, Screen

ImageSearch, XX, YY, 0, 0 , 1920, 1080, C:\Users\lee_donghun03\Desktop\AUTO\auto\수기업로드\사업자전환.png
if errorlevel=0
	MouseClick, l, % XX, % YY
else if errorlevel=1
	MsgBox, 없음
CoordMode, mouse, relative
	

Sleep 1500 ; 오류 개선이 필요할 듯 로딩시간이 너무 들쭉날쭉 ;;


WinRestore, "https://hometax.go.kr/?w2xPath=/ui/pp/a/a/UTXPPAAA25.xml&popupID=UTXPPAAA25&w2xHome=/ui/et/b/d/ - Internet Explorer"
WinActivate, "https://hometax.go.kr/?w2xPath=/ui/pp/a/a/UTXPPAAA25.xml&popupID=UTXPPAAA25&w2xHome=/ui/et/b/d/ - Internet Explorer"
MouseClick, l, 582, 181
Sleep 500
send ^v
Sleep 500
MouseClick, l, 410, 229
Sleep 500
MouseClick, l, 46, 352
Sleep 500
MouseClick, l, 437, 435
Sleep 1000
Send, {enter}
Sleep 1000
Send, {enter}
Sleep 1000
WinActivate, ahk_class Chrome_WidgetWin_1
Sleep 1500

CoordMode, mouse, Screen

ImageSearch, XX, YY, 0, 0 , 1920, 1080, C:\Users\lee_donghun03\Desktop\AUTO\auto\수기업로드\조회하기.png
if errorlevel=0
	{
	MouseClick, l, % XX + 20, % YY + 20
	MouseClick, l, % XX + 300, % YY + 10
	}
else if errorlevel=1
	MsgBox, 없음
*/

Sleep 1500


CoordMode, pixel, screen
CoordMode, mouse, Screen

ImageSearch, XX, YY, 0, 0 , 1920, 1080, C:\Users\lee_donghun03\Desktop\AUTO\auto\수기업로드\총공급가액.png
if errorlevel=0
	MouseClickDrag, l, % XX, % YY, % XX+940 , % YY ;% XX+610 세금계산서 % XX+920 계산서
else if errorlevel=1
	MsgBox, 없음
CoordMode, mouse, relative

send, ^c
Sleep 500
;WinRestore, Microsoft Excel - 사업장 담당자_이동훈
WinActivate, Microsoft Excel - 사업장 담당자_이동훈
;WinWait, Microsoft Excel - 사업장 담당자_이동훈
Sleep 500
send, {Right 4}
Sleep 500
send, {F2}
Sleep, 500
send, ^v ;
Sleep 500
Send, {enter}
Sleep, 500
send, {left 4}
Sleep 500
}


return
F3::
Pause

F4::
ExitApp