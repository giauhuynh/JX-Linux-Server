--��Ѩ�Թ� ���γ��� trap
-- by��Dan_Deng(2003-07-31)

function main(sel)
	if (GetTask(9) == 50*256+128) and (HaveItem(10) == 1) then
		Msg2Player("���뿪����֮�������")
--		SetPos()
	else
		Msg2Player("��Ҫ���ò����Ǹ����˵�ͷ���Ͳ��ܳ�ȥ! ")
	end
end;
