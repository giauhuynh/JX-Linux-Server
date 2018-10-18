-- ��Ȫ�塡���ˡ�������
-- by��Dan_Deng(2003-09-16)
-- �嶾��90������
-- update by xiaoyang(2004\4\13)

Include("\\script\\global\\repute_head.lua")

Include("\\script\\item\\skillbook.lua")

function main()
	Uworld124 = GetTask(124)
	Uworld37 = GetByte(GetTask(37),2)
	if ((Uworld124 < 10) and (GetLevel() >= 90) and (GetReputeLevel(GetRepute()) >= 5) and (Uworld37 == 127) and (GetFaction() ~= "wudu")) or 
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5895) == 0)	then
		Talk(6,"Uworld_wuget","C�c h� ��n ��y t�m ra c� vi�c g�?","c� ph�i l� v� b� k�p th��ng t�n c�a ng� ��c gi�o m� ��n ��y?","t�i h� �ang mang tr�ng th��ng, th�n th� b� tr�ng ph�i ��c �m d��ng ti�u c�a V�n b�t t�, n�n kh�ng th� gi�p b� thi�u hi�p ��y r�i","::��i hi�p b� tr�ng ph�i k�ch ��c c�a V�n b�t t� sao?",":: N�u ta c� th� gi�p ��i hi�p ��y gi�i ��c th� ng�i c� th� gi�p ta v� b� k� n�ng c�a ng� ��c gi�o kh�ng?","Kh�ng th�nh v�n ��, nh�ng v� thi�p hi�p ��y li�u c� �� s�c?")
	elseif(Uworld124 == 40) and (HaveItem(387) == 1) then
		Talk(5,"Uworld_wufinish","::��y l� thu�c gi�i!",
		"��y ��ng l� thu�c gi�i r�i, ng��i ��ng l� ng��i t�t! ",
		"::V�y c�n vi�c l�i h�a c�a ng��i v� b� k�p ng� ��c gi�o",
		"V�ng, c�m �n ��i hi�p �� tr��ng ngh�a ra tay c�u gi�p, ��y l� l�i h�a c�a ta","�a t�!")
	elseif(Uworld124 > 10) and (Uworld124 < 40) then
		Talk(1,"","�LTT6Ǻ�")
	else
		Talk(1,"","Ng��i c� nghe n�i ��n chuy�n b�c '��a �� s�n h� x� t�c g� �� kh�ng?' C� th�t l� c� b�c ��a �� �� kh�ng? N�u nh� c� ���c n� trong tay r�i th� vinh hoa ph� qu� h��ng c� m�y ��i c�ng kh�ng h�t.")
	end
end

function Uworld_wuget()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- ����δѧҰ��ȭ�ģ������������
		Talk(1,"","Hi�n t�i ta kh�ng th� ti�p nh�n nhi�m v� n�y!")
	else
		Say("Ch�ng hay ng��i s� b�t ��u t� ��u?",2,"Ta s� l�n ���ng ��n ng� ��c gi�o �� h�i th�m tin t�c/Uworld_wduok","Th�i, ta b�n l�m, hay �� khi kh�c nh�/Uworld_wduno")
	end
end

function Uworld_wduok()
	SetTask(124,10)
	SetTask(5895,1)
	Msg2Player("B�n ��n ng� ��c gi�o, v�o kim x� tr�i �� h�i v� thu�c gi�i")
	AddNote("B�n ��n ng� ��c gi�o, v�o kim x� tr�i �� h�i v� thu�c gi�i")
end

function Uworld_wduno()
end

function Uworld_wufinish()
	DelItem(387)
	if ((GetTask(10) >= 70*256) and (GetTask(10) ~= 75*256)) or (GetTask(5895) == 1) then				-- ���嶾��ʦ�ģ�����ѧ������
		if GetLastFactionNumber() == 3 then
			Talk(2,"","B�n bi�t th�m v� �m m�u th�m hi�m c�a V�n b�t t�","Tuy nhi�n giang h� v�n l�m c� nhi�u kh�c m�c, b�n s� ti�p t�c cu�c h�nh tr�nh c�a m�nh!")
			if (HaveMagic(353) == -1) then		-- ����û�м��ܵĲŸ�����
				AddMagic(353,1)
			end
			if (HaveMagic(355) == -1) then		-- ����û�м��ܵĲŸ�����
				AddMagic(355,1)
			end
			if (HaveMagic(390) == -1) then		-- ����û�м��ܵĲŸ�����
				AddMagic(390)
			end
			-- CheckIsCanGet150SkillTask()
			Msg2Player("Ho�n th�nh nhi�m v�, b�n nh�n ���c b� k� n�ng c�p 90 c�a Ng� ��c gi�o!")
			SetTask(124,255)
			SetTask(5895,255)
		end
	else
		SetTask(124,245)								--������������ñ���245
	end
   add_repute = 30			-- �������������30�㣬��100����ÿ���ݼ�4%
   AddRepute(add_repute)
   Msg2Player("Ho�n th�nh nhi�m v�, b�n nh�n ���c "..add_repute.." �i�m danh v�ng.")
   AddNote("Ho�n th�nh nhi�m v�, b�n nh�n ���c "..add_repute.." �i�m danh v�ng.")
end
