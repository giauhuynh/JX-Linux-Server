--description: ��ԭ���� ���̽�����3to���̽�ʥ��1 ���̳̽�ʦ����
--author: yuanlan	
--date: 2003/5/20
--Trap ID����ԭ���� 5
-- Update: Dan_Deng(2003-08-14)

function main(sel)
	UTask_tr = GetTask(4);
--	if (GetFaction() ~= "tianren") then
	if (UTask_tr >= 60*256+50) and (GetFaction() == "tianren") then
		NewWorld(51, 1666, 3291)
		SetFightState(1)						--���ת����ս��״̬
	elseif (UTask_tr > 60*256) and (UTask_tr < 60*256+50) then
		Talk(1,"","��û�н���ѶϽ������պ��ң����ܽ�ʥ��.")
		SetPos(1749, 3081)						--�����߳�Trap��
	else
		Talk(1,"","�������̽�ʥ������ȥ���˲��ܳ���.")
		SetPos(1749, 3081)						--�����߳�Trap��
	end
end;
