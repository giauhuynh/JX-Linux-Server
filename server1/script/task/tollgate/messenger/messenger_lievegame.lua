-------------------------------------------------------------------------
-- FileName		:	messenger_losetask.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-07 17:33:14
-- Desc			:	��ʹ�������������ʧ�������õĽű��������ǧ��������ʱ����
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���

function messenger_livegame()
	
	local _, _, nMapIndex = GetPos()

	if ( nt_getTask(1203) ~= 30 and nt_getTask(1203) ~= 25 ) then

		local MapId = SubWorldIdx2ID( nMapIndex )
		if ( MapId >= 387  and MapId <= 395) then
			DisabledUseTownP(0)
			SetFightState(0)		-- �����̺��Ϊ��ս��״̬
			--SetLogoutRV(0);       -- �������˴˽ű����������ѱ�ȡ�����޷���ȥ�����ط��գ�����ԭ�������ˡ�
			SetPunish(1);
			SetCreateTeam(1);
			SetPKFlag(0)
			ForbidChangePK(0);
			SetDeathScript("");
			if nt_getTask(1203) == 20 or nt_getTask(1203) == 25  then
				nt_setTask(1203,21)--��ʱ�ж�����
			end
		end
			
--		Msg2Player("������ʹ����ʧ���ˣ�")
	end
--	nt_setTask(1211,0)
end


