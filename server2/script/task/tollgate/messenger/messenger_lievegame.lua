-------------------------------------------------------------------------
-- FileName		:	messenger_losetask.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-07 17:33:14
-- Desc			:	信使任务中所有玩家失败所调用的脚本，玩家在千宝库离线时调用
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的类

function messenger_livegame()
	
	local _, _, nMapIndex = GetPos()

	if ( nt_getTask(1203) ~= 30 and nt_getTask(1203) ~= 25 ) then

		local MapId = SubWorldIdx2ID( nMapIndex )
		if ( MapId >= 387  and MapId <= 395) then
			DisabledUseTownP(0)
			SetFightState(0)		-- 打完仗后改为非战斗状态
			--SetLogoutRV(0);       -- 当设置了此脚本后，重生点已被取消，无法再去其他地方勒，所以原地重生了。
			SetPunish(1);
			SetCreateTeam(1);
			SetPKFlag(0)
			ForbidChangePK(0);
			SetDeathScript("");
			if nt_getTask(1203) == 20 or nt_getTask(1203) == 25  then
				nt_setTask(1203,21)--暂时中断任务
			end
		end
			
--		Msg2Player("您的信使任务失败了！")
	end
--	nt_setTask(1211,0)
end


