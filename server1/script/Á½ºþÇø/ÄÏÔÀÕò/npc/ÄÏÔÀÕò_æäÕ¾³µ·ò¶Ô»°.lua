--������ ������ ��վ����Ի�  ��������
-- Update: Dan_Deng(2003-09-16)��ʱ���������Ժ���д�ؿ��ţ�

CurStation = 11;
Include("\\script\\global\\station.lua")
--Include("\\script\\global\\skills_table.lua")

function main(sel)
--	check_update()					-- ���ܸ��¡����ɼӱ�ʶ��2004-05-31��
--	UTask_world15 = GetTask(15)
--	if (UTask_world15 < 255) then	
--		Say("���򣺰������ڵ�����Խ��Խ�����ˣ�ԭ�����в��ٸ��̴�үȥ��ũ���Ƕ����棬���������֪���Ķ��ܳ�һȺ��Ҷ���·��ٿ��ˣ�������������Ӱ�죬��������ܸ�����Щ��Ҷ��ͺ��ˡ�����Ҹ���ʮֻ���ӣ��Ϳ��������������ʹ��һ�γ�����Ҫ������", 2, "��æ/yes", "����æ/no")
--		SetTask(15, 1)
--	else
		Say("V� thi�u hi�p c� mu�n �i ��u kh�ng?", 4, "Nh�ng n�i �� �i qua/WayPointFun", "Nh�ng th�nh th� �� �i qua/StationFun", "Tr� l�i �i�m c�/TownPortalFun", "Th�i, kh�ng �i/OnCancel");
--	end
end;

function  OnCancel()
   Say("Khi n�o mu�n �i c� t�m l�o!",0)
end;
