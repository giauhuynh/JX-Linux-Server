--���ϱ��� ����� ·��3���ӶԻ�
--������������񣺻��ӵĵ���
--suyu
-- Update: Dan_Deng(2003-08-11)
-- Update: Dan_Deng(2003-09-09) �޸�װ���������ɷ�ʽ

Include("\\script\\global\\itemhead.lua")

function main(sel)
--	UTask_world18 = GetTask(46);
	UTask_world45 = GetTask(45)
	if ((UTask_world45 == 0) and (GetLevel() >= 5)) then		-- ������������Ҫ5������
		if(GetSex() == 0)then
	Say("��i ca! Th� r�n h�a t�ng ta m�t c�y n�, kh�ng bi�t �� l�m xong ch�a, h�y h�i �ng �y gi�m ta!", 2 , "�� ta h�i gi�p/yes", "Ta �ang b�n l�m/no")
		else
	Say("T� t�! Th� r�n h�a t�ng ta m�t c�y n�, kh�ng bi�t �� l�m xong ch�a, h�y h�i �ng �y gi�m ta!", 2 , "�� ta h�i gi�p/yes", "Ta �ang b�n l�m/no")
		end
	elseif(UTask_world45 == 10) then
		Talk(1,"","Mau �i h�i ��i th�c l�m xong ch�a?")
	elseif(UTask_world45 == 20) then
		if(HaveItem(176) == 1) then
			Talk(1,"","T�t qu�, t�t qu�! Ch�t n�a ta s� �i t�m Thi�n Thi�n ch�i. Thanh v� kh� n�y ta t�m ���c ngo�i th�n, ta gi� � ��y ch�ng l�m g�, th�i th� g�i t�ng ng��i!")
			DelItem(176)
			p1,p2,p3,p4,p5,p6 = RndItemProp(6,15)
			AddItem(0,0,random(0,5),2,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)		-- һ�������������
			SetTask(45, 100)
			AddRepute(8)
			AddNote("Ho�n th�nh nhi�m v� mang n� v� cho H� T�.")
			Msg2Player("Ho�n th�nh nhi�m v� mang n� v� cho H� T�.")
			Msg2Player("Nh�n ���c m�t binh kh�")
			Msg2Player("Danh v�ng c�a b�n t�ng th�m 8 �i�m.")
		else
			Talk(1,"","T�i sao tuy�t v�n ch�a r�i nh�? Ta th�ch nh�t l� ch�y ��a tr�n tuy�t!")
		end
	else
		if (random(0,1) == 0) then
			Talk(1,"","Ai da! Kh�ng bi�t th�c th�c Tr� r�n �� l�m xong n� cho ta ch�a? Tay ngh� c�a ��i th�c r�t gi�i. Ti�m thi�t ki�m n�i ti�ng c�a �ng g�n xa ��u bi�t ti�ng, t�o ra nh�ng l�a v� kh� tuy�t v�i!")
		else
			Talk(1,"","T�i sao tuy�t v�n ch�a r�i nh�? Ta th�ch nh�t l� ch�y ��a tr�n tuy�t!")
		end
	end
end;

function yes()
	Talk(1,"","Ti�m c�a th�c th�c Th� r�n n�m ngay c�a th�n, r�t d� t�m!")
	SetTask(45, 10)
	AddNote("Ti�p nh�n nhi�m v�: Thay H� T� ��n h�i ng��i th� r�n �� l�m xong c�y n� ch�a?")
	Msg2Player("Ti�p nh�n nhi�m v�: Thay H� T� ��n h�i ng��i th� r�n �� l�m xong c�y n� ch�a?")
end;

function no()
	Talk(1,"","Hic v�y �� ta nh� ng��i kh�c!")
end;
