var := "abcdefghijklmnopqrstuvwxyz4567894253850561805423123048945612030234897460123231748940312680748421023150484640648946102313878997464646612312312331897496774"
var1 := SubStr(var, InStr(var, "z") + 1, StrLen(var)) ;SubStr(var, InStr(var, "z") + 1)
var2 := strlen(var1)
MsgBox, %var1% `n`n숫자는 총 %var2%글자입니다.