#SingleInstance force
DetectHiddenWindows,On
SetTitleMatchMode, slow

b=4
a=2==%b%

MsgBox %a%

F1::

WinRestore, Microsoft Excel - 임대매출 결산(2020)
WinActivate, Microsoft Excel - 임대매출 결산(2020)
return
/*
!2::
FileOpen, "C:\Users\lee_donghun03\Desktop\업무\임대매출\Microsoft Excel - 임대매출 결산(2020)"
*/
return

F2::
Pause

F4::
ExitApp