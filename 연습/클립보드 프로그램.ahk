#SingleInstance, Force

Gui, Add, Text, x32 y49, Ctrl + 1
Gui, Add, Text, x32 y89, Ctrl + 2
Gui, Add, Text, x32 y129, Ctrl + 3
Gui, Add, Text, x32 y169, Ctrl + 4
Gui, Add, Text, x32 y209, Ctrl + 5
Gui, Add, Text, x232 y49, Ctrl + 6
Gui, Add, Text, x232 y89, Ctrl + 7
Gui, Add, Text, x232 y129, Ctrl + 8
Gui, Add, Text, x232 y169, Ctrl + 9


Gui, Add, Edit, x82 y49 w100 h20 vcp1, 
Gui, Add, Edit, x82 y89 w100 h20 vcp2, 
Gui, Add, Edit, x82 y129 w100 h20 vcp3, 
Gui, Add, Edit, x82 y169 w100 h20 vcp4, 
Gui, Add, Edit, x82 y209 w100 h20 vcp5, 
Gui, Add, Edit, x282 y49 w100 h20 vcp6, 
Gui, Add, Edit, x282 y89 w100 h20 vcp7, 
Gui, Add, Edit, x282 y129 w100 h20 vcp8, 
Gui, Add, Edit, x282 y169 w100 h20 vcp9, 

Gui, Add, button, x200 y300 gbtn, ����


Gui, Show, w479 h379, Ŭ������ ���α׷�
Gui, +alwaysontop
return

Clip(cpx)
{
GuiControl, , % cpx, 
Clipboard =   ;Ŭ�����带 ���ϴ�.
ClipWait,        ;Ŭ�����带 ��ٸ��ϴ� ( ���ڰ� ������ ������ ��ٸ� ���ڸ� �־��ָ� �׸�ŭ�� ��ٷ���)
If ErrorLevel = 0  ;Ŭ�����尡 ���Դٸ�
A = %Clipboard%  ;Ŭ�����带 a��� ������ �ֽ��ϴ�
GuiControl, , % cpx, % A
}
return

btn:
x = 1
loop 9
{	
	GuiControl, , cp%x%,
	x++
}
return

^1::
gui, submit, nohide
GuiControl, , cp1, 
Clipboard = 
ClipWait,        
If ErrorLevel = 0  
A = %Clipboard%  
GuiControl, , cp1, % A
return

^2::
gui, submit, nohide
GuiControl, , cp2, 
Clipboard =   
ClipWait,        
If ErrorLevel = 0  
A = %Clipboard%  
GuiControl, , cp2, % A
return

^3::
gui, submit, nohide
GuiControl, , cp3, 
Clipboard =  
ClipWait,       
If ErrorLevel = 0  
A = %Clipboard%  
GuiControl, , cp3, % A
return

^4::
gui, submit, nohide
GuiControl, , cp4, 
Clipboard =  
ClipWait,       
If ErrorLevel = 0  
A = %Clipboard%  
GuiControl, , cp4, % A
return

^5::
gui, submit, nohide
GuiControl, , cp5, 
Clipboard =  
ClipWait,       
If ErrorLevel = 0  
A = %Clipboard%  
GuiControl, , cp5, % A
return

^6::
gui, submit, nohide
GuiControl, , cp6, 
Clipboard =  
ClipWait,       
If ErrorLevel = 0  
A = %Clipboard%  
GuiControl, , cp6, % A
return

^7::
gui, submit, nohide
GuiControl, , cp7, 
Clipboard =  
ClipWait,       
If ErrorLevel = 0  
A = %Clipboard%  
GuiControl, , cp7, % A
return

^8::
gui, submit, nohide
GuiControl, , cp8, 
Clipboard =  
ClipWait,       
If ErrorLevel = 0  
A = %Clipboard%  
GuiControl, , cp8, % A
return

^9::
gui, submit, nohide
GuiControl, , cp9, 
Clipboard =  
ClipWait,       
If ErrorLevel = 0  
A = %Clipboard%  
GuiControl, , cp9, % A
return

GuiClose:
ExitApp