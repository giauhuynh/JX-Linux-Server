--description: �䵱������䵱40������
--author: yuanlan	
--date: 2003/5/15
-- Update: Dan_Deng(2003-08-17)
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(13) == 1 then
		allbrother_0801_FindNpcTaskDialog(13)
		return 0;
	end
	UTask_wd = GetTask(5);
	if (UTask_wd == 40*256+40) and (HaveItem(163) == 1) then		-- �Ѿ�����ϻ�
		Talk(2, "L40_step", "�䵱�ɵ��书��Ȼ�������ҵĸ��ֵ��Ӷ���������ˣ���һ�϶�?", " ��һ�������ҵ���ʦ�������Ҵ��Ÿ���!")
	elseif (UTask_wd == 40*256+20) then
		Talk(1,"","������5ֻ�׻������б����ȴ�����ǣ���������! ")
		AddNote("�ڷ�ţɽ���ڶ����������Ҫ�����ֻ���� ")
		Msg2Player("�ڷ�ţɽ���ڶ����������Ҫ�����ֻ����")
	elseif (UTask_wd == 40*256+60) and (HaveItem(164) == 0) then						--�Ѿ�����廢����δ�õ�����
		Talk(1,"","�ҵĻ��ŷ��ڶ�����б��¾ͽ�ȥ�ð�!")
	elseif (UTask_wd >= 40*256+60) then						--�õ����ź�
		Talk(1,"","ԭ����Ҳ֪�����ˣ���㲻�Ǹ���!")
	else
		Talk(1,"","����˭���ҽ��������ǲ������?")
	end
end;

function L40_step()
	Talk(1,"","��һ���˶��̵��ӣ����أ��ҿ�����ԭ���������ҵ�Ǹ����֪��ˣ��αص������������ĵ��ӣ��ҾͲ�Ϊ���㡣��Ҳ��һ�����������������")
	DelItem(163)
	SetTask(5, 40*256+60)
	AddNote("�����ֻ�׻��󣬲�֪���ű�������ڶ���")
	Msg2Player("�ű�������ڶ��ڣ��ҵ�����������")
end;
