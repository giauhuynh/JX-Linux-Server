-- ���� ְ�� ����
-- By: Dan_Deng(2003-09-16)

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Ta l� th� r�n ch�nh � ��y, c�ng vi�c r�t b�n mu�n mua g� th� c� xem t� nhi�n."

function main(sel)
	tiejiang_city(TIEJIANG_DIALOG);
end;

function yes()
	Sale(16);  				--��ʱ��Ϊ25
end;

