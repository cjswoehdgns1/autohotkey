#SingleInstance, Force

Gui, show, w170 h90
Gui, add, button, w150 h20 g6��, 6��
Gui, add, button, w150 h20 g7��, 7��
Gui, add, button, w150 h20 g8��, 8��
return

f(b)
{
a=1
Loop 9
{
x .= b " x " a " = " b*a "`n"
a++
}
msgbox, % x
x := ""
}

6��:
f(6)
return

7��:
f(7)
return

8��:
f(8)
return