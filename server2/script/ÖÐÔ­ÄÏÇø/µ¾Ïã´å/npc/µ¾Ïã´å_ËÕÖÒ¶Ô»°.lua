--description: ���ִ�_����
--author: wangzg	
--date: 2003/7/22
-- Update: Dan_Deng(2003-08-11)

function main()
	UTask_world43=GetTask(71)
	if (UTask_world43==1) then
		Talk(3, "select", "Huynh l� T� Trung? M� huynh �ang lo l�ng cho huynh l�m ��y!", "Ta c�ng kh�ng mu�n m� ta b�n t�m, nh�ng ta �� quy�t ��nh t�ng qu�n r�i!", "T�i sao v�y?")
	elseif (UTask_world43==2) then
		Talk(1,"","C�m �n ng��i �� khuy�n ta! ")
	elseif (UTask_world43==3) then
		Talk(1,"","V�y phi�n ng��i khuy�n m� ta! ")
	else	
		Talk(1,"","Cha ta ch�t th�m d��i tay ng��i Kim, m�i th� n�y c� ��i ta kh�ng qu�n!")
	end
end;

function select()
Say("Hi�n Qu�c gia �ang l�m n�n, ta l�m sao ch� lo ��c s�ch ���c c� ch�?",2,"Khuy�n can/against","T�n ��ng/support")
end

function against()
	Talk(4,"","Nh�ng m� tu�i huynh c�n tr�, qu�n t� b�o th� 10 n�m kh�ng mu�n, h�c th�m ch�t b�n l�nh ng�y sau m�i c� th� gi�t ��ch!", ".....ng��i n�i c�ng c� ��o l�!", "Huynh hi�u th� t�t! Mau v� th�m m�, b� ta r�t nh� huynh ��y!","���c r�i! C�m �n ng��i!")
	SetTask(71,2)
	AddNote("Khuy�n T� Trung � nh� �� th�nh c�ng.")
	Msg2Player("Khuy�n T� Trung � nh� �� th�nh c�ng. ")
end

function support()
	Talk(3,"","N�i r�t hay! Huynh tuy c�n tr� tu�i nh�ng l�i mang ch� l�n.","Ta mu�n nh�p ng�, nh�ng lo m� ta s� kh�ng cho ta �i.","Huynh y�n t�m! Ta s� gi�p huynh khuy�n b� cho.")
	SetTask(71,3)		
	AddNote("�ng h� T� Trung gi�p huynh �y tr� v� khuy�n b� ��ng �")
	Msg2Player("�ng h� T� Trung gi�p huynh �y tr� v� khuy�n b� ��ng �")
end
