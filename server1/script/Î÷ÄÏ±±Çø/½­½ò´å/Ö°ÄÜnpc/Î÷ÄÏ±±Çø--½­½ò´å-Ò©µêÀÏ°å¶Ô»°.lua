--���ϱ��� ����� ҩ���ϰ�Ի�������������������ϵ���ҩ��
--suyu
-- Update: Dan_Deng(2003-08-11)
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")


function main(sel)
	UTask_world21 = GetTask(49);
	Uworld1000 = nt_getTask(1000)	
	if ((UTask_world21 == 1) and (HaveItem(179) == 0)) then
		Say("Ng� L�o Th�i nh� ng��i ��n mua thu�c �? Ta �� chu�n b� s�n cho ng��i 10 vi�n Xuy�n B�i Ho�n, t�ng c�ng 200 l��ng. Nh�n v�i L�o Th�i h�y gi� g�n s�c kh�e!",3,"Mua Xuy�n B�i Ho�n/buy","Mua m�t �t thu�c kh�c/yes","Kh�ng mua ��u/no")
	else
		Say("Ng��i �� �n 5 c�c t�p l��ng, kh�ng ph�t h�a nh�c ��u m�i l�! Ch� ta tuy nh� nh�ng tuy�t ��i kh�ng thi�u th� g�! Ng��i c� mu�n mua �t thu�c kh�ng?", 3, "Giao d�ch/yes", "Ta ��n l�m nhi�m v� s� nh�p/yboss","Kh�ng giao d�ch/no");
	end
end;

function buy()
	if(GetCash() >= 200)then
		Pay(200)
		AddEventItem(179) --�õ�ҩ
		Msg2Player("Nh�n ���c Xuy�n B�i Ho�n")
		AddNote("Mua ���c Xuy�n B�i Ho�n.")
	else
		Talk(1,"","Khi n�o �� ti�n th� h�y quay l�i")
	end
end;

function yes()
	Sale(24)						--�������׿�
end;

function no()
end;
