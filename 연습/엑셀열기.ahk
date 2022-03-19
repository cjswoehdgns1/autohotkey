#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

; "C:\Users\lee_donghun03\Desktop\업무\임대매출\임대매출 결산(2020).xlsx"
; "C:\Users\lee_donghun03\Desktop\업무\KA\일괄등록리스트\01~06월 KA 미정산 리스트.xlsx"

global xlFile := "C:\Users\lee_donghun03\Desktop\업무\KA\일괄등록리스트\01~06월 KA 미정산 리스트.xlsx"
;global xlFile := "C:\Users\lee_donghun03\Desktop\업무\임대매출\임대매출 결산(2020).xlsx"
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