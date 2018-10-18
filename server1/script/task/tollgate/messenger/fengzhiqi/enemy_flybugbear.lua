-------------------------------------------------------------------------
-- FileName		:	enemy_flybugbear.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-06 18:30:14
-- Desc			:   风之骑关卡的小怪脚本
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的类
Include("\\script\\task\\tollgate\\messenger\\lib_messenger.lua") --调用组队判断
Include("\\script\\event\\birthday_jieri\\200905\\class.lua");


function messenger_killbugbear()
	local Bil_GetTeamSize = GetTeamSize()
	local Bil_OldValue1203 = GetTask(1203)
	if Bil_GetTeamSize > 0 then
		return Bil_AddValue4Team(Bil_GetTeamSize)
	else
	-- AddOwnExp(10000)   
	AddOwnExp(8000)   
	SetTask(1203, Bil_OldValue1203 + 1)
	Msg2Player("Kim qu鑓 t� t竎  ti猽 di謙: <color=yellow>"..GetTask(1203).."<color>")
	end
end

function Bil_AddValue4Team(Bil_GetTeamSize)
	local Bil_OldPlayerIdx = PlayerIndex
	for i = 1, Bil_GetTeamSize do
		PlayerIndex = GetTeamMember(i)
		SetTask(1203, GetTask(1203) + 1)
		-- AddOwnExp(10000)   
		AddOwnExp(8000)   
		Msg2Player("Kim qu鑓 t� t竎  ti猽 di謙: <color=yellow>"..GetTask(1203).."<color>")
	end
	PlayerIndex = Bil_OldPlayerIdx
end
