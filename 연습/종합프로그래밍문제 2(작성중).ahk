#SingleInstance, Force

Gui, Add, ListBox, x10 y10 w100 h60 vList, 과채류|고기류|가공식품|기타
Gui, Add, Edit, x10 y70 w150 h20 vFst, 기타 품목 입력
GuiControl, Disable, Fst
Gui, Add, Button, x120 y15 w70 h45 gbtn, 만들기
Gui, Show, w200 h100, 품목 관리
Gui, +AlwaysOnTop
return

btn:
Gui, submit, nohide
GuiControl, Disable, Fst
Guicontrol, , Fst, 기타 품목 입력
if (list = "과채류")
{
FileDelete, 품목
FileAppend, 사과`, 당근`, 오이`, 배, 품목
FileRead, v과채류, 품목
MsgBox, 262144, ,% v과채류
}
else if (List = "고기류")
{
FileDelete, 품목
FileAppend, 돼지`, 소`, 닭`, 오리, 품목
FileRead, v고기류, 품목
MsgBox, 262144, ,% v고기류
}
else if (List = "가공식품")
{
FileDelete, 품목
FileAppend, 라면`, 과자`, 음료수, 품목
FileRead, v가공식품, 품목
MsgBox, 262144, ,% v가공식품
}
else if (List = "기타")
{
GuiControl, enable, Fst
FileDelete, 품목
FileAppend, % Fst, 품목
FileRead, v기타, 품목
MsgBox, 262144, ,% v기타
}
else
msgbox, 262144, 종합문제, 항목을 선택해주세요.
return

GuiClose:
ExitApp