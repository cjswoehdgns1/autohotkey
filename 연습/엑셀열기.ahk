#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

; "C:\Users\lee_donghun03\Desktop\����\�Ӵ����\�Ӵ���� ���(2020).xlsx"
; "C:\Users\lee_donghun03\Desktop\����\KA\�ϰ���ϸ���Ʈ\01~06�� KA ������ ����Ʈ.xlsx"

global xlFile := "C:\Users\lee_donghun03\Desktop\����\KA\�ϰ���ϸ���Ʈ\01~06�� KA ������ ����Ʈ.xlsx"
;global xlFile := "C:\Users\lee_donghun03\Desktop\����\�Ӵ����\�Ӵ���� ���(2020).xlsx"
global xl := ""
global wb := ""
global sht := ""

IfWinExist, ahk_class XLMAIN
{
	xl := ComObjActive("Excel.Application")
	
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
return