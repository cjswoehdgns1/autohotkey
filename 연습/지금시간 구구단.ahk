#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

F1::
if (A_Hour>12)
c := A_Hour-12
else
c := A_Hour
f(c)
return

f(a)
{	
b := 1
	Loop 9
	{
	x .= a " x " b " = " a*b "`n"
	b++
	}	
MsgBox, % x
}

