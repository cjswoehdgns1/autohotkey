#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On


varinityy(ByRef yy) ; ByRef �Լ��� �������� �ʱ�ȭ�����ִ� �Լ�
{
yy := 278-25
}

varinitxx(ByRef xx) ; ByRef �Լ��� �������� �ʱ�ȭ�����ִ� �Լ�
{
xx := 573-49
}

;�⺻ �ڵ�

F1::
Loop, 10
{
MouseClick, l, xx, yy
yy+=42
Sleep, 500

}
varinityy(yy)
return


;���� ���� 20���� ���� �ڵ�
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