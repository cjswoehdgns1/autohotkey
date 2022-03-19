#SingleInstance, Force

Gui, Add, ListBox, x10 y10 w100 h60 vList, 과채류|고기류|가공식품|기타
Gui, Add, Edit, x10 y70 w150 h20 vFst, 기타 품목 입력
GuiControl, Disable, Fst
Gui, Add, Button, x120 y15 w70 h45 gbtn, 만들기
Gui, Show, w200 h100, 품목 관리
Gui, +AlwaysOnTop

f(list)
{
if (list = "과채류")
x = 사과`, 당근`, 오이`, 배
else if (list = "고기류")
x = 돼지`, 소`, 닭`, 오리
else if (list = "가공식품")
x = 라면`, 과자`, 음료수
FileDelete, 품목
FileAppend, % x, 품목
FileRead, b, 품목
MsgBox, 262144, ,% b
}
return

btn:
Gui, submit, nohide
GuiControl, Disable, Fst
Guicontrol, , Fst, 기타 품목 입력

if (List = "기타")
{
x = % Fst
GuiControl, enable, Fst
FileDelete, 품목
FileAppend, % x, 품목
FileRead, b, 품목
MsgBox, 262144, ,% b
}

else if (list = "")
msgbox, 262144, 종합문제, 항목을 선택해주세요.

else
f(list)
return

GuiClose:
ExitApp