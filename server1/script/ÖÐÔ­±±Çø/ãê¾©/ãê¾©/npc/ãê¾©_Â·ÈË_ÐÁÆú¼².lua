-- �꾩 ·��NPC ��������������������
-- by��Dan_Deng(2003-08-01)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
function main()
	-- Uworld38 = GetByte(GetTask(38),2)
	-- if ((Uworld38 == 10) and (HaveItem(122) == 0)) then		--�������������
		-- Say("����û���˲�������Σ�գ����ˣ�����������ǿ���Ը�",2,"����Ϊ�����Ǽ���������ʩ����/enroll_S2_A","��·�Ͽ�����ƽ֮�£����������Թۣ���������� /enroll_S2_B")
	-- else
		-- Talk(1,"","Ŭ����Ϊ��Ϊ��Ϊ���°���")
			Bil_DefaultTalk4Npc()
	-- end
end;

function enroll_S2_A()
	-- Say("����û���˲�������Σ�գ����ˣ�����������ǿ���Ը�",3,"Ŭ����Ϊ��Ϊ��Ϊ���°���/enroll_S2_wrongA","�������룬����õĽ���취/enroll_S2_correct","�����Լ�������Ҳ��Ҫ�˺������� /enroll_S2_wrongA")
end;

function enroll_S2_B()
	-- Say("������500��������������!",3,"��л /enroll_S2_wrongB","�ҿ��԰���ʲô��/enroll_S2_wrongB","���ǲ����鷳/enroll_S2_correct")
end;

function enroll_S2_correct()
	-- Talk(1,"","�����Һ�����Ե�������޽��")
	-- AddEventItem(122)
	-- Msg2Player("��ù�޽��")
	-- AddNote("�ش������������⣬��ù�޽�� ")
end;

function enroll_S2_wrongA()
	-- Talk(1,"","����û���˲�������Σ�գ����ˣ�����������ǿ���Ը�")
end;

function enroll_S2_wrongB()
	-- Talk(1,"","���Ǯ���ۿ�����ô�ܷ�������������������ʧ��!")
end;
