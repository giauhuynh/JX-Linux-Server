--description: ��ԭ���� �꾩�� ·��14��÷�Ի� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

function main(sel)
	-- UTask_tr = GetTask(4);
	-- if (UTask_tr == 60*256+20) then
		-- UTask_trsub60 = GetByte(GetTask(28),3)
		-- if (UTask_trsub60 == 0) then
			-- DelItem(130)			--�����ؽ��������Ҽ���������ߵ����	
			-- Say("�������Ǽ�С����������֪��Ұ��ʲô�ط����ȥ�ˣ����ܰ���������?", 2, "�õ�!/L60_sub3_yes", "�һ��б����. /L60_sub3_no")
		-- elseif (UTask_trsub60 == 2) then
			-- Talk(1,"","�ҵ����Ǽ�С������?")
		-- elseif (UTask_trsub60 == 4) then
			-- Talk(2, "", "С���ڹ㳡������أ�������ͻ��� !", "̫лл���ˣ��Ҽ�С�������Ҫ������һ�붮�¾ͺ��ˣ���Ҳûʲô��ĺö�������ѶϽ������Ǽ�������ǽ��ģ�������һ��ϰ��֮�ˣ����͸����")
			-- AddEventItem(130)
			-- Msg2Player("�õ��Ͻ���ȥа�� ")
			-- SetTask(28, SetByte(GetTask(28),3,10))
			-- AddNote("�ص���÷�ң���öϽ���ȥа ")
		-- elseif (UTask_trsub60 == 10) and (HaveItem(130) == 0) then
			-- AddEventItem(130)
			-- Msg2Player("�Ͻ���ȥа")
			-- Talk(1,"","�˽���Ȼ��ֵ����Ǯ���������ҵ�һ�����⣬�㲻Ҫ�ƴ�.")
		-- else
			-- Talk(1,"","С���������ڼң��⺢���ֲ���������! ")
		-- end
	-- else
		-- i = random(0,2)
		-- if (i == 0) then
			-- Talk(1,"","��÷���������Ǽ�С����������֪��Ұ��ʲô�ط����ȥ�ˡ�")
		-- elseif (i == 1) then
			-- Talk(1,"","��÷��С���������ڼң���������ȫ���ң�ƫƫ������������")
		-- else
			-- Talk(1,"","��÷������ʱ�ֲ��ã����������Ѱ���")
		-- end;
			Bil_DefaultTalk4Npc()
	-- end
	
end;

function L60_sub3_yes()
	-- Talk(1,"","̫�鷳���� ! ")
	-- SetTask(28, SetByte(GetTask(28),3,2))
	-- AddNote("�ڶ����꾩һ��������������÷��������С��")
	-- Msg2Player("��÷�������ȥ��С�� ")
end;

function L60_sub3_no()
	Talk(1,"","�����⺢�������˲��İ�g! ")
end;
