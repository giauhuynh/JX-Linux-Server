--��Ȫ�� ְ�� ����
--��Ȫ��Т�������޵�
-- By: Dan_Deng(2003-09-03)
Include("\\script\\global\\global_tiejiang.lua")
Include("\\Script\\Global\\TimerHead.lua")

TIEJIANG_DIALOG = "<dec><npc>Mu�n mua lo�i binh kh� n�o? T�i ��y r�t nhi�u binh kh� n�i ti�ng, kh�ng tin ng��i �i h�i thanh danh c�a Long Tuy�n Ho�ng Gia xen!"

function main(sel)
	UTask_world19 = GetTask(19)
	if(UTask_world19 == 2) then
		if (HaveItem(229) == 1) then
			tiejiang_village("<dec><npc>C�y �ao n�y h� h�ng n�ng n�, ph�i b� kh�ng �t ti�n �� tu s�a n�. Ti�n s�a l� 120 l��ng ng��i c� s�a kh�ng?", "��a ti�n s�a �ao/W19_repair")
		else
			Talk(2,"","M� l�i 'LTT001' vui l�ng ch�p h�nh v� g�i ��n BQT �� ���c fix l�i","����! �ҵĵ�������Ŵ���! �һ�����õ�")
		end
	elseif (UTask_world19 == 4) then
		tiejiang_village("<dec><npc>C�y �ao c�a ��i hi�p �ang ���c tu s�a. Sau "..GetRestSec(7).."<#> gi�y h�y quay l�i l�y.")
	elseif (UTask_world19 == 6) then
		Talk(2,"","�ao c�a ng��i �� s�a xong r�i!","T�t l�m! C�m �n ng��i.")
		SetTask(19,8)
		AddEventItem(230)
		AddNote("Nh�n ���c c�y �ao Th� r�n �� s�a xong.")
		Msg2Player("Nh�n ���c c�y �ao Th� r�n �� s�a xong.")
	elseif (UTask_world19 == 8) and (HaveItem(230) == 0) then
		Talk(1,"","�ao c�a ng��i �� s�a xong r�i.")
		AddEventItem(230)
		Msg2Player("Nh�n ���c c�y �ao Th� r�n �� s�a xong..")
	else
		tiejiang_village();
	end
end;

function W19_repair()
	if (GetTimerId() > 0) then		-- ���м�ʱ����������
		Talk(1,"","�LTT58����ڽ����������������񣬻�����?")
	else
		if (GetCash() < 120) then
			Talk(1,"","Ng��i qu�n mang theo ti�n �?")
		else
			Talk(1,"","Ok r�i h�n ng��i 2 gi� sau ��n l�y �ao nh�.")
			Pay(120)
			SetTask(19,4)
			DelItem(229)
			SetTimer(2 * CTime * FramePerSec, 7)
			AddNote("Giao �ao cho th� r�n s�a, hai gi� sau quay l�i l�y.")
			Msg2Player("Giao �ao cho th� r�n s�a, hai gi� sau quay l�i l�y.")
		end
	end
end;

function yes()
Sale(28);  				--�������׿�
end;
