--��ԭ���� ������ ����6����ţ�Ի�


Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")


function main(sel)

i = random(0,2)
	Uworld1051 = nt_getTask(1051)
	if ( Uworld1051 ~= 0 ) then
		branch_taokan()
	else
		if (i == 0) then
Say("Cung A Ng�u:  Ra kh�i th�nh, �i v� h��ng B�c, kh�ng xa ch�nh l� V� �ang S�n .",0)
		return
		end;
		
		if (i == 1) then
Say("Cung A Ng�u:  Nghe n�i ch��ng m�n ph�i V� �ang l� m�t ��c ��o ch�n nh�n, kh�ng bi�t ���c c� ph�i hay kh�ng ��c ��o l� c� th� tr��ng sanh b�t l�o ",0)
		return
		end;
		
		if (i == 2) then
Say("Cung A Ng�u:  N�u kh�ng ph�i l� trong nh� c� m� gi�, ta �� s�m l�n V� �ang s�n b�i s� h�c ngh� r�i.",0)
		end;
	end
end;

