-- �������� ������to�����Թ�������60������
--Trap ID���������� 17
-- By: Dan_Deng(2003-09-09)

function main(sel)
	UTask_cy = GetTask(6)
	if (UTask_cy > 60*256) and (GetFaction() == "cuiyan") then
		SetFightState(1)
		NewWorld(158, 1584, 3191);
	elseif (UTask_cy <= 60*256) then
--		SetPos()
		Talk(1,"","���ܽ��뱾�Ž���!")
	else
--		SetPos()
		Talk(1,"","���Ǵ��̽��أ����ܽ���!")
	end
end;
