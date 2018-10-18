-------------------------------------------------------------------------
-- FileName		:	playerdead_tollgate.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-07 17:33:14
-- Desc			:	信使任务中所有玩家死亡所调用的脚本
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的类

function OnDeath()
	if ( nt_getTask(1203) == 20 or nt_getTask(1203) == 25 ) then
		nt_setTask(1203,21)
	end
end