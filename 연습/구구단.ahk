#SingleInstance, Force
#WinActivateForce
SetTitleMatchMode, 2
SetTitleMatchMode, slow
DetectHiddenWindows, On

F1::
f(1)

return

F2::
f(2)

return

F3::
f(3)

return

F4::
f(4)

return

F5::
f(5)

return

F6::
f(6)

return

F7::
f(7)

return

F8::
f(8)

return

F9::
f(9)

return

a := 1

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

return

	




