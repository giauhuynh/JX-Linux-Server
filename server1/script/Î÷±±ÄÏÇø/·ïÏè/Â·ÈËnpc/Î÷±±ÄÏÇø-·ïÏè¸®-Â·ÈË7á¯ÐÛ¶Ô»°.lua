--�������� ���踮 ����7��۶Ի�

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel)
	Uworld1050 = nt_getTask(1050)
	if ( Uworld1050 ~= 0 ) then
		branch_cenxiong()
	else
Say("S�m h�ng: Ta ��y sinh ra � Ph��ng T��ng, su�t ng�y � n�i ��y, kh�ng bi�t thi�n h� ngo�i kia nh� th� n�o. C�ng mu�n ra ngo�i m�t chuy�n.",0)
	end
end;
