--��ԭ���� ������ ��������1�Ի�

FESTIVAL06_NPCNAME = "<color=yellow>��������:<color>";
Include([[\script\global\·��_��������.lua]]);

function main(sel)
    gsoldier_entance();
end;

function main_former()
	UTask_wd = GetTask(5);
	UTask_wd60sub = GetByte(GetTask(17),3)
	if (UTask_wd == 60*256+20) and (UTask_wd60sub == 2) then
		Say("Th� th�nh ��i nh�n �� tr�n v�o m�t ��o ph�a sau nha m�n, Kim t�c c�n ch�a t�i m� �� s� nh� v�y !", 0)
		AddNote("��n nha m�n c�ng v� binh ��i tho�i, bi�t t��ng th� th�nh �� tr�n v�o m�t ��o ph�a sau nha m�n. ")
		Msg2Player("Th� th�nh T��ng D��ng �� tr�n v�o m�t ��o ph�a sau nha m�n.")
	else
		Talk(1,"","Nha m�n v� binh:��i nh�n c� l�nh, nh�ng ng��i kh�ng c� nhi�m v� kh�ng ���c qua ��y !")
	end
end;
