#SingleInstance, Force

Gui, show, w220 h100, 문제 정답
Gui, add, Button, x10 y20 w60 h60 gFirst, 1
Gui, add, Button, x80 y20 w60 h60 gSecond, 2
Gui, add, Button, x150 y20 w60 h60 gThird, 3
return

First:
MsgBox, 1번을 눌렀습니다
return

Second:
MsgBox, 2번을 눌렀습니다
return

Third:
MsgBox, 3번을 눌렀습니다
return