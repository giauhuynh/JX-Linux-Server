-- �ٰ���ְ�ܡ�����
-- by��Dan_Deng(2003-09-16)
--update:zhaowenyi(2005-02-20)������ɫ���ƽ�װ������

Include("\\script\\global\\global_tiejiang.lua")


TIEJIANG_DIALOG = "<dec><npc>Ti�m r�n n�y �� c� t� th�i �ng n�i ta, tuy tay ngh� kh�ng gi�i nh�ng c�ng kh�ng t�, kh�ch quan mu�n mua g�?";
function main()
	tiejiang_city(TIEJIANG_DIALOG);
end;


function yes()
	Sale(1);  				--�������׿�
end;

