--��ԭ���� �꾩�� ��������4�Ի���������������
-- by��Dan_Deng(2003-08-01)

Include("\\script\\global\\map_helper.lua")
npc_name = "<#>"
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

function default_talk()
	-- Uworld38 = GetByte(GetTask(38),2)
	-- if ((Uworld38 == 10) and (HaveItem(121) == 0)) then		--�������������
		-- Say("��������ı��ӵ��˰������������ţ����ܵ����������.",4,"����Ҫ�������������/enroll_S1_wrong","���������ߣ�Ϊ��Ϊ��/enroll_S1_correct","����֮�£�Ī������������֮����Ī������ /enroll_S1_wrong","���ı����������޺�/enroll_S1_wrong")
	-- else
		-- Talk(1,"","���˲������Ǻ��ˣ����ǲ���ʲô������!")
			Bil_DefaultTalk4Npc()
	-- end
end;

function enroll_S1_correct()
	Talk(1,"","��ͭ����Ȼ��ֵʲôǮ�����ǣ��͸���������!")
	AddEventItem(121)
	Msg2Player("��ó�ͭ��")
	AddNote("�ش����������⣬��ó�ͭ��")
end;

function enroll_S1_wrong()
	Talk(1,"","���˲������Ǻ��ˣ����ǲ���ʲô������!")
end;
