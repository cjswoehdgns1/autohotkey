#SingleInstance force
DetectHiddenWindows,On
SetTitleMatchMode, slow

GroupAdd, �׷�, ���� ���� - �׸���
GroupAdd, �׷�, ���� ���� - �޸���

F1::
GroupActivate, ahk_group

!1::
/*
WinRestore, ahk_class IEFrame
WinExist, ahk_class IEFrame
*/

;WinRestore, F-LINK - SAP NetWeaver Portal - Internet Explorer
WinExist, ahk_class rctrl_renwnd32
;WinActivate, F-LINK - SAP NetWeaver Portal - Internet Explorer

return

F2::
Pause

F4::
ExitApp

