--�������� ���踮 �����̵ϰ�Ի�
-- VH by anhdung9992001 clbgamesvn--
Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Th� r�n: Mu�n mua binh kh� g� �� ph�ng th�n kh�ng?"
function main(sel)
	tiejiang_city(TIEJIANG_DIALOG);
end;


function yes()
	Sale(19);  			--�������׿�
end;

