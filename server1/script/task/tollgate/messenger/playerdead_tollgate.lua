-------------------------------------------------------------------------
-- FileName		:	playerdead_tollgate.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-07 17:33:14
-- Desc			:	��ʹ����������������������õĽű�
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���

function OnDeath()
	if ( nt_getTask(1203) == 20 or nt_getTask(1203) == 25 ) then
		nt_setTask(1203,21)
	end
end