-- ��Ȫ�� ְ��NPC ҩ���ϰ壨�嶾10������
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main()
	UTask_wu = GetTask(10)
	if ((UTask_wu == 10*256+10) and (HaveItem("10����ʯ") == 0)) then 		--������
		Say("LTT62������ʲôҩ�Ķ��У��в��뿪���޲�������ҩ���Ĳ���ƭ����Ҫ��һ����?", 3, "������˪��ʯ��?/L10_buy", "����/yes", "������/no")
	else
		Say("LTT63������ʲôҩ�Ķ��У��в��뿪���޲�������ҩ���Ĳ���ƭ����Ҫ��һ����?", 3, "����/yes","������ȡ��������/yboss", "������/no")
	end
end;

function L10_buy()
	Talk(1,"L10_buy_sele","�LTT64ǿ��Ƕ�ҩ������һ������ô�����ʲô?")
end;

function L10_buy_sele()
	Say("�LTT65����������ϸ����Ǯ�Ļ�... �ٺ٣�1000��!",2,"��/L10_buy_yes","��ô����Ǯһ��!/L10_buy_no")
end;

function L10_buy_yes()
	if (GetCash() >= 1000) then
		Pay(1000)
		AddEventItem(220)
		AddNote("�LTT66�10����˪.")
		Msg2Player("��10����˪.")
	end
end;

function L10_buy_no()
	Talk(1,"","�LTT67���˪����˭֪��������ô��Ҫ����?")
end;

function yes()
	Sale(30);  			--�������׿�
end;

function no()
end;
