--description: ��ԭ���� �꾩�� ·��16��ؤ�Ի� ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

function main(sel)
	-- UTask_tr = GetTask(4)
	-- Uworld38 = GetByte(GetTask(38),2)
	-- if (UTask_tr == 60*256+20) then
		-- UTask_trsub60 = GetByte(GetTask(28),4)
		-- if (UTask_trsub60 == 0) then 
			-- DelItem(131)			--�����ؽ��������Ҽ���������ߵ����
			-- Say("�ͼ���СǮ�� ! ", 2, "�� /yes1", "����! /no")
		-- elseif (UTask_trsub60 == 2) then 
			-- Say("�ͼ���СǮ��! ", 2, "�� /yes2", "����! /no")
		-- elseif (UTask_trsub60 == 4) then 
			-- Say("�ͼ���СǮ��! ", 2, "�� /yes3", "����! /no")
		-- elseif (UTask_trsub60 == 10) then
			-- if (HaveItem(131) == 0) then
				-- AddEventItem(131)
				-- Talk(1,"","��ѽ���ֵʲôǮ������Ҳ���ҵ�һƬ���⣬�㲻Ҫ�ƴ�?!")
			-- else
				-- Talk(1,"","�����㵹����һ������������α��֮�����ã�С�л�������������Ѯ�!")
			-- end
		-- end
	-- elseif (Uworld38 == 10) then		-- �����������������
		-- if ((HaveItem(121) == 1) and (HaveItem(122) == 1) and (HaveItem(218) == 1)) then		-- ��ͭ�󡢹�޽�㡢�ᾧʯ
			-- Say("ֻҪ���������ϵ�3����������",2,"���� /SLenroll_S4_yes","ֻ��ƭ�˶��ѣ�������� /no")
		-- else
			-- Talk(1,"","��λ������Ǯ;��������ʩ��һ��������!")
		-- end
	-- elseif ((Uworld38 == 20) and (HaveItem(219) == 0)) then		--�����У�֤�����Ŷ���
		-- Talk(2,"","�ҿ���־������!","û����! �Ҹ���д���ž���.")
		-- AddEventItem(219)
	-- elseif (UTask_tr > 60*256+20) then
		-- Talk(1,"","�����㵹����һ������������α��֮�����ã�С�л�������������Ѯ֮�!")
	-- else
		-- Talk(1,"","��ؤ���������о�����������һ�ھƺȰɣ��ҿ���û���ԣ��ɲ���û�ƺȰ���")
--		Talk(1,"","��ؤ���������о�����������һ�ھƺȰɣ��ҿ���û���ԣ��ɲ���û�ƺȰ���")
	Bil_DefaultTalk4Npc()
	-- end
end;

function SLenroll_S4_yes()
	-- Talk(1,"","�����㵹����һ������������α��֮�����ã�С�л�������������Ѯ֮�!")
	-- DelItem(121)
	-- DelItem(122)
	-- DelItem(218)
	-- AddEventItem(219)
	-- Uworld38 = SetByte(GetTask(38),2,20)
	-- SetTask(38,Uworld38)
	-- Msg2Player("����ؤ���л��һ����. ")
	-- AddNote("����ؤ���л��һ����. ")
end;

function yes1()
	-- if (GetCash() >= 10) then
		-- Pay(10)
		-- Talk(1,"","ֻ����ô�㰡���ߣ���ôС��! ")
		-- SetTask(28, SetByte(GetTask(28),4,2))
	-- else
		-- Talk(1,"","������˼���Ҵ���Ǯ����.")
	-- end
end;

function yes2()
	-- if (GetCash() >= 50) then
		-- Pay(50)
		-- Talk(1,"","�ߣ�����Ϊ������ؤ�ͺô�! ")
		-- SetTask(28, SetByte(GetTask(28),4,4))
	-- else
		-- Talk(1,"","���Ѿ�ûǮ��!.")
	-- end
end;

function yes3()
	-- if (GetCash() >= 100) then
		-- Pay(100)
		-- Talk(1,"","��������ѽ�������һ�����⣬�㲻Ҫ�ƴ�!")
		-- AddEventItem(131)
		-- Msg2Player("�����꽣 ")
		-- SetTask(28, SetByte(GetTask(28),4,10))
		-- AddNote("���꾩����һ����ؤ������ʩ��3�Σ������꽣")
	-- else
		-- Talk(1,"","�������������� ! ")
	-- end
end;

function no()
-- Say("��ؤ��������Ϊ����������డ��", 0);
end;
