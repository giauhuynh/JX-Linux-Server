-- �꾩 ·��NPC ��ʿ��������������
-- by��Dan_Deng(2003-08-01)
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

function main()
	-- Uworld38 = GetByte(GetTask(38),2)
	-- if ((Uworld38 == 10) and (HaveItem(218) == 0)) then		--�������������
		-- Say("���֣����ڽ����������˼������? ",2,"��� /enroll_S3_step2","����˼��/enroll_S3_wrong")
	-- else
		-- Talk(1,"","ֻ�м�ֲ�и���˲���ʵ���Լ�������.")
			Bil_DefaultTalk4Npc()
	-- end
end;

function enroll_S3_step2()
	-- Talk(1,"enroll_S3_step3","��С�ӣ��Ҿ�ǿ ?")
	-- Msg2Player("ʹ����һ��")
end;

function enroll_S3_step3()
	-- Say("���ٸ���һ�����ᣬ˵����ɱ�����ֵ�������?",2,"��Ȼ��� /enroll_S3_correct","����˼�� /enroll_S3_wrong")
end;

function enroll_S3_correct()
	-- Talk(1,"","�ܺá�ֻ�м�ֲ�и���˲���ʵ���Լ�������. ")
	-- AddEventItem(218)
	-- Msg2Player("��üᾧʯ")
	-- AddNote("֤����ļ������üᾧʯ")
end;

function enroll_S3_wrong()
	-- Talk(1,"","����޴��ļһ��Ҫ������ ���Ͳ��� �ĸ���")
end;
