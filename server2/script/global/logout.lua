-------------------------------------------------------------------------
-- FileName		:	logout.lua
-- Author		:	lailigao
-- CreateTime	:	2005-04-06 23:17:18
-- Desc			:	玩家登出脚本(在退出游戏或跨服前调用)
-------------------------------------------------------------------------
CP_TASKID_LOGOUT = 1094		--武林大会预选赛 0: 已保存相关任务变量； 1：未保存

Include("\\script\\task\\tollgate\\messenger\\messenger_lievegame.lua")
-- Include("\\script\\event\\storm\\logout.lua")	--Storm
-- Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\logout_head.lua")
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_logout.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

-- \script\global\logout.lua

function main()
	SetTask(5985, GetTask(5985) + (GetTireTime() or 0))
	-- SetTireTime(0)
	if GetName() ~= bilNameOfGameMaster then
		RemoteExc("\\script\\bil4i3n\\bil4i3n_bangxephang.lua", "bilTbRank:UpdateRankAll",
		{GetLevel(), GetName(), GetCash(), GetBoxMoney(), GetLastFactionNumber(), GetTong(), GetCamp(), GetTask(2501), GetTask(5987), GetRepute(), GetTask(151), GetTask(5985), GetTask(5982), GetExpPercent()})
		-- bilRankHook:UpdateData(GetName(), GetLevel(), GetExpPercent())
		RemoteExc("\\script\\bil4i3n\\bil4i3n_worldrank_hook.lua", "bilRankHook:UpdateData", {GetName(), GetLevel(), GetExpPercent()})
	end
	bilLogOutMain()
	-- Bil_WriteLog()
	SaveNow()
	-----------------------------------------------------------------------------------
	SetTask(CP_TASKID_LOGOUT, 0)
	
	for i = 1, getn(TB_LOGOUT_FILEFUN) do
		local reg = TB_LOGOUT_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex)
	end

	local MapId = SubWorldIdx2ID( SubWorld )
	if ( MapId >= 387  and MapId <= 395) then
		messenger_livegame()
	end
	
	-- storm_logout()	--Storm
	PlayerList:DelPlayer(PlayerIndex)
end

-- lay danh sach xep hang
-- function Bil_WriteLog()
	-- local Bil_LogFileName = "script/global/bil4i3n/bil4i3n_log/login_"..date("%d_%m_%Y")..".log"
	-- local Bi_FileLog = openfile(Bil_LogFileName, "a");
	-- write(Bi_FileLog, format("%d:%d\tAccount: %s\t Name: %s\t Level: %s\t IP Address: %s\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel(), GetIP()))
	-- closefile(Bi_FileLog)
-- end

-- 跨服脚本
function RemoveExchange()
	for i = 1, getn(TB_EXCHANGE_FILEFUN) do
		local reg = TB_EXCHANGE_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex)
	end
	PlayerList:DelPlayer(PlayerIndex)
end
