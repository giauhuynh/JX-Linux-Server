--description: ��ԭ���� �꾩�� ·��3С���Ի� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)


Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
function main(sel)
	-- UTask_tr = GetTask(4);
	-- if (UTask_tr == 60*256+20) then
		-- UTask_trsub60 = GetByte(GetTask(28),3)
		-- if (UTask_trsub60 == 2) then 
		-- Talk(2, "", "��ң�С���ԣ����ؼ�ȥ�ɣ��������������أ�", "С����Ŷ����������������һ������ܿ�ͻ�ȥ���������ġ�")
			-- SetTask(28, SetByte(GetTask(28),3,4))
			-- AddNote("�ڳ��ڹ㳡�ҵ�С����Ȱ���ؼ�")
			-- Msg2Player("�ڳ��ڹ㳡�ҵ�С����Ȱ���ؼ�")
		-- elseif (UTask_trsub60 >= 4) then 
			-- Talk(1,"","С����������һ������ܿ�ͻ�ȥ��")
		-- end
	-- else
		-- Talk(1,"","С������������ϵ����ı��Ǻ�«�ˣ������ﲻ�ϸ�����˵�Զ��˻��ֶ��ӡ�")
			Bil_DefaultTalk4Npc()
	-- end
end;
