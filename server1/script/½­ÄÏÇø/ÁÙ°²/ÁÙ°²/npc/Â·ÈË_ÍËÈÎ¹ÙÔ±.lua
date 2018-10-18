-- 临安　⒎人　退任官员 (临安：183/182)(NewWorld(176,1465,2927))
-- by：Dan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-07-19) 部分玩家完成90级任务无法得到技能的BUG的补丁

Include("\\script\\global\\skills_table.lua")

function main()
	faction_task = {7,3,2,10,1,6,8,4,5,9}
	faction_name = {"shaolin","tianwang","tangmen","wudu","emei","cuiyan","gaibang","tianren","wudang","kunlun"}
	quest_task = {122,121,123,124,125,126,128,127,129,130}
	LastFactionNo = GetLastFactionNumber()
	if (LastFactionNo < 0) then					-- 没有门派的不允许进行修复流程（包括白名）
		if (GetFaction() ~= "") then
			WriteLog("Ngi ch琲' "..GetAccount().."'nh﹏ v藅'"..GetName().."': m玭 ph竔 kh玭g ng,kh玭g th� tu luy謓 k� n╪g c蕄 90.")
			Say("Ngi l� ngi c馻 m玭 ph竔 n祇?,ta c祅g xem c祅g kh玭g gi鑞g.",0)
		else
			Talk(1,"","Ta v鮝 b萴 b竜 ho祅g thng mu鑞 c竜 l穙 v� qu�,ta mu鑞 � y mua m閠 m穘h vn an hng tu鎖 gi�. ")
		end
		return
	end

	if (GetFaction() == "wudang") and (GetSeries() == 4) then	-- 只要是武当派就允许进行检查，检查有问题的直接修复退出，没有问题的继续后面的流程
		MagicPoint_total = GetLevel() + GetByte(GetTask(86),2) + GetByte(GetTask(80),1) - 1		-- 应有点数
		GetMagic_total = 	GetTotalSkill() + GetMagicPoint()												-- 实有点数
		if (HaveMagic(210) == 1) then GetMagic_total = GetMagic_total - 1 end		-- 这两句判断是排除从未学过轻功的人返回-1从而导症点数计算错误情况
		if (HaveMagic(400) == 1) then GetMagic_total = GetMagic_total - 1 end
		n = MagicPoint_total - GetMagic_total
		if (n > 0) then						--　实有点数<应有点数，即技能点丢失
			SetTask(137,0)
			Say("ngi tr� tu鎖 kh玭g n猲 g蕄 g竝,h穣 t譵 c竎h  tr髏 b� 璾 phi襫,ai tr猲 i m� kh玭g l祄 sai.",1,"Xin 產 t�./KickOutSelf")
			return
		end
	end

	i = faction_task[LastFactionNo + 1]
	j = quest_task[LastFactionNo + 1]
	k = floor(LastFactionNo/2)
	if (GetTask(2) == 80*256) and (GetSeries() == 1) and (HaveMagic(302) == 0) then
		AddMagic(302,1)				-- 修复吃书得到暴雨梨花技能等级为0级的错误
		Say("Ngi c遪 tr� kh玭g n猲 v� m閠 chuy謓 nh� m� n穘 l遪g,m鋓 chuy謓 u c� c竎h gi秈 quy誸,c� g緉g l猲 n祇! ",0)
	elseif (GetTask(i) == 80*256) and (GetFaction() == faction_name[LastFactionNo+1]) and (GetSeries() == k) and (GetTask(j) == 245) then
		SetTaskTemp(20,0)		-- 清空临时变量，准备使用
		repair90(i)			-- 90级技能修复
		SetTask(j,255)			-- 任务状态修复
		WriteLog("Ngi ch琲 "..GetAccount().."'nh﹏ v藅'"..GetName().."': C蕄 k� n╪g 90 ph秈 truy襫 th� theo m玭 ph竔."..i..", nhi謒 v� "..j.." ho祅 to祅 h錳 ph鬰! ")
		Say("Ngi c遪 tr� kh玭g n猲 v� m閠 chuy謓 nh� m� n穘 l遪g,m鋓 chuy謓 u c� c竎h gi秈 quy誸,c� g緉g l猲 n祇! ",0)
		SetTaskTemp(20,0)		-- 清空临时变量，以备息次
	else
		Talk(1,"","B鎛 quan v鮝 m韎 t� ch鴆,ho祅g thng  ﹏ chu萵, ta chu萵 b� trc m閠 c╪ nh� � ngo筰 �, th藅 t�  an hng tu鎖 gi�.")
	end
end;

function repair90(x)
	if (x == 1) then
		SetTaskTemp(20,332)
		add_em(90)
	elseif (x == 2) then
		SetTaskTemp(20,351)
		add_tm(90)
	elseif (x == 3) then
		add_tw(90)
	elseif (x == 4) then
		SetTaskTemp(20,391)
		add_tr(90)
	elseif (x == 5) then
		add_wd(90)
	elseif (x == 6) then
		add_cy(90)
	elseif (x == 7) then
		add_sl(90)
	elseif (x == 8) then
		add_gb(90)
	elseif (x == 9) then
		SetTaskTemp(20,394)
		add_kl(90)
	elseif (x == 10) then
		SetTaskTemp(20,390)
		add_wu(90)
	end
end
