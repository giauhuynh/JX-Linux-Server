-- ���� ·��NPC ����ɣ�ؤ��10������
-- by��Dan_Deng(2003-07-28)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
function main()
		Bil_DefaultTalk4Npc()
end;

function L10_question_1()
	Say("��һ�ʣ���Ȫ�ƵĻ�Ȫ��ָʲô?",4,"���� /L10_wrong","����/L10_wrong","Ȫˮ/L10_question_2","�������� /L10_wrong")
end;

function L10_question_2()
	Say("��ͷ�����£���Ӱ�ɼ��ˣ���ʲô?",4,"�ܶ���/L10_wrong","3 �� /L10_question_3","2 �� /L10_wrong","1 �� /L10_wrong")
end;

function L10_question_3()
	Say("������:�����ĸ�����ָ�Ƶ�����",4,"���� /L10_wrong","����/L10_wrong","���� /L10_wrong","��� /L10_correct")
end;

function L10_wrong()
	Talk(1,"","���ˣ�������;���Ե!")
end;

function L10_correct()
end;
