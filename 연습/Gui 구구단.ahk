#SingleInstance, Force

Gui, show, w170 h90
Gui, add, button, w150 h20 g6단, 6단
Gui, add, button, w150 h20 g7단, 7단
Gui, add, button, w150 h20 g8단, 8단
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

6단:
f(6)
return

7단:
f(7)
return

8단:
f(8)
return