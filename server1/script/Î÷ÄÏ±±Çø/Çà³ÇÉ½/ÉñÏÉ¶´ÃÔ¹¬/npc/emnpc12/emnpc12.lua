--description: �����ɸ��� 
--author: yuanlan	
--date: 2003/3/5
-- Update: Dan_Deng(2003-08-12)
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	
	if allbrother_0801_CheckIsDialog(1) == 1 then
		allbrother_0801_FindNpcTaskDialog(1)
		return 0;
	end
	
	
	UTask_em = GetTask(1)
	if (UTask_em == 40*256+10) then
		Talk(1,"","��ʲô�£��ȴ��������<color=Red>����<color>��˵.")
		AddNote("�ҵ�һ�����Ӹ��ˣ��������İ�������Ҫ�������������")
	elseif (UTask_em == 40*256+20) then
		Say("��Ҫ���ף��û�������<color=Red>��ܽ�ؽ���ͼ��<color>����. �˻������ڳɶ���̫ƽ�ھ�����б����������")
		SetTask(1, 40*256+40)
		AddNote("������ޣ��������ھְ�ܽ�ؽ���ͼ����ȥ")
		Msg2Player("����Ҫ����ܽ�ؽ���ͼ�����񳯷�����")
	elseif ((UTask_em == 40*256+60) and (HaveItem(21) == 1)) then						--�õ�ܽ�ؽ���ͼ
		Talk(6, "select", "��������ܽ�ؽ���ͼ.", "������ǻ��ڵ��漣�����������ҳ�˼ĺ�룬���ڵõ���!", "��������԰ѡ����񳯷�����׸����˰�?", "��...", "����ǰ�����ˣ��ɲ����Զ����ţ�����ᱻ�����˳�Ц��.", "����û˵��������������ף�����ȥ��!")
	elseif ((UTask_em == 40*256+80) and (HaveItem(22) == 0)) then
		AddEventItem(22)
		Talk(3,"","û�������񳯷����װ�����Ϊ�㲻�ã����ù���","ǰ�����˻���ƭ��������������ȥ�������ͻ� ","���ˣ��������ˣ��������װ�")
	elseif (UTask_em >= 40*256+40) and (UTask_em < 40*256+80) then
		Talk(1,"","��Ҫ���װ�����<color=Red>'ܽ�ؽ���ͼ��'<color> ����.")
	elseif (UTask_em >= 40*256+80) then
		Talk(1,"","ܽ�ؽ���ͼ�������һ����Ҳ����.")
	else
		Talk(1,"","���˱���������!")
	end
end;

function select()
	DelItem(21)
	AddEventItem(22)
	SetTask(1, 40*256+80)
	AddNote("ܽ�ؽ���ͼ�����񳯷�����. ")
	Msg2Player("��ð��񳯷�����")
end; 
