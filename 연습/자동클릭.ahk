#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


varinityy(ByRef yy) ; ByRef 함수란 변수값을 초기화시켜주는 함수
{
yy := 278-25
}

varinitxx(ByRef xx) ; ByRef 함수란 변수값을 초기화시켜주는 함수
{
xx := 573-49
}

;기본 코드

F1::
Loop, 10
{
MouseClick, l, xx, yy
yy+=42
Sleep, 500

}
varinityy(yy)
return


;양쪽 지문 20개에 대한 코드
F2::
xx+=60
Loop, 10
{
MouseClick, l, xx, yy
yy+=41
Sleep, 500

}
varinityy(yy)
varinitxx(xx)

xx-=300
Loop, 10
{
MouseClick, l, xx, yy
yy+=41
Sleep, 500

}
varinityy(yy)
varinitxx(xx)
return

F6::
MouseGetPos, xx, yy
send, %xx% %yy%
return

F3::
Pause

F4::
ExitApp