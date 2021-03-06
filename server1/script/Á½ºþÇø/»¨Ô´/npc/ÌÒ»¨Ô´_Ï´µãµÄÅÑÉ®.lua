--洗技能点的叛僧
-- By: Dan_Deng(2003-08-29)
-- Update: Dan_Deng(2004-02-04) 洗点修改为可以洗255次
-- Update: Dan_Deng(2004-05-27) 小儿失踪任务 (Uworld42 = GetTask(42))
-- 临时变量设定: 初次技能(1),初次水晶(257),多次水晶(10),免费(1024)
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\vng_event\\tochieukynang150\\head.lua")


function main()
Say("Ch祇 v� thi誹 hi謕")
	-- Uworld42 = GetTask(42)
	-- tbTrainSkill150:ResetDailyTask()
	-- if (Uworld42 == 40) then
		-- Talk(12,"","我来找失踪的小孩! ","阿弥陀佛，我是清白之人，不懂，不懂. ","希望大师慈悲，说给我听!","那年我被逐出师门，方丈有慈悲吗","不懂大师为何事而被逐出师门? ","你问那么多干嘛？哈哈哈，老衲不仅要和你说为什么被逐出师门，还要告诉你失踪小孩的事","哈哈，原来和尚犯戒了","阿弥陀佛，善哉善哉!","酒肉已吃过，心不向佛了. ","哈哈，好。你与我有缘，我告诉你!","大师，十个人的命不是开玩笑的","好，你去找一个人叫龙追舞，只有他才知道那个人在哪里")
		-- SetTask(42,50)
		-- AddNote("失踪小孩任务：去找龙追舞，询问失踪小孩的消息. ")
		-- Msg2Player("失踪小孩任务：去找龙追舞，询问失踪小孩的消息. ")
		-- else		
		-- local szTitle = "释明：现在只要找随便哪个城市的车夫，都可以送你去“洗髓岛”，比贫僧洗髓更加方便。"
		-- szTitle = szTitle .. "不过我这边可以送你们去<color=yellow>无名秘镜<color>，在那里可以用经验来换取某些技能的熟练度。"
		
		-- local tbOpt = {}
		-- tinsert(tbOpt, {"交物品", tbTrainSkill150.LoadItem, {tbTrainSkill150}})
		-- tinsert(tbOpt, {"送我去无名秘镜", toWumingmijin})	
		-- tinsert(tbOpt, {"我再考虑下", no})
		
		-- CreateNewSayEx(szTitle, tbOpt)

	-- end
end;

function toWumingmijin()
	local tbSkill_150 = {1055,1056,1057,1059,1060,1058,1066,1067,1069,1070,1071,1061,1062,1114,1063,1065,1075,1076,1074,1073,1079,1078,1080,1081,}
	local bResult = 0
	for i=1, getn(tbSkill_150) do
		if HaveMagic(tbSkill_150[i]) ~= -1 then
			bResult = 1
			break
		end
	end

	if bResult == 1 then
		NewWorld(967,1634, 3231)
	else
		Talk(1,"","学到150技能后再去无名秘境!")
	end
end

function rollback_0611()		-- 为(2004-06-11)设计的免费洗点
	if (GetCash() >= 100000) then
		SetTaskTemp(1,1024)		-- 此次洗点增量为1024
		rollback_prise()
	else
		Talk(1,"","你行走江湖这么久，100000 两都没有吗?")
	end
end

function rollback_1212()		-- 为(2003-12-12)设计的免费洗点（已取消）
	if (GetCash() >= 100000) then
		SetTaskTemp(1,1)		-- 此次洗点增量为1
		rollback_prise()
	else
		Talk(1,"","这点钱都没有，怎么行走江湖?!")
	end
end

function found_jewel_yes()		-- 找到宝石，换回技能点
	if (GetCash() >= 100000) then
		j238 = GetItemCountEx(238)
		j239 = GetItemCountEx(239)
		j240 = GetItemCountEx(240)
		if (j238+j239+j240 == 3) then
			Pay(100000)
			SetTask(13,GetTask(13) + 256)	-- 把变量改成用过宝石的状态
			for i = 1,j238 do DelItemEx(238) end
			for i = 1,j239 do DelItemEx(239) end
			for i = 1,j240 do DelItemEx(240) end
			AddMagicPoint(3)		-- 补回洗点扣除的3点。
			Talk(1,"KickOutSelf","好了，你现在休息一下，恢复一下!")
		elseif (j238+j239+j240 > 3) then
			Say("你给我3颗水晶先，我才能帮你!",1,"那我稍候回来/rollback_no")
		else
			Talk(1,"","你不够3颗水晶")
		end
	else
		Talk(1,"","好了，你现在休息一下，恢复一下!")
	end
end

function rollback_get()
	Say("好了，我很累。你给我捶捶背!",2,"这是十万两，请大师收下. /pay_yes","那算了/rollback_no")
end;

function rollback_no()
	Talk(1,"","正等你大驾光临，就收到十万两，哈哈!. ")
end;

function pay_yes()					-- 初次洗点，是用的宝石（不扣技能）
	if (GetCash() >= 100000) then
		if (GetByte(GetTask(13),2) == 0) then		-- 若用过水晶就不再允许用水晶洗点
			Say("你先给我3颗水晶，我才能帮你!",3,"我有3颗 /pay_jewel","我没有，经脉受伤，受不了了. /jewel_none","那我就晚点帮你 /rollback_no")
		else
			jewel_none()
		end
	else
		Talk(1,"","这是你的诚意吗？你回去吧! ")
	end
end

function pay_jewel()
	j238 = GetItemCountEx(238)
	j239 = GetItemCountEx(239)
	j240 = GetItemCountEx(240)
	if (j238+j239+j240 == 3) then
		SetTaskTemp(1,257)		-- 记住是用宝石洗的点（洗点变量值为257，非1）
		Talk(2,"rollback_prise","好了，你现在休息一下，恢复一下!","现在坐在我前面")
	elseif (j238 + j239 + j240 > 3) then
		Say("你先给我3颗水晶，我才能帮你!",1,"那我稍候回来/rollback_no")
	else
		Talk(1,"","你明明没有3颗水晶")
	end
end

function NEWpay_yes()		-- 第二次（及以后）洗点时调用，直接检查钱和宝石，不再记录是否宝石洗
	if (GetCash() >= 100000) then
		j238 = GetItemCountEx(238)
		j239 = GetItemCountEx(239)
		j240 = GetItemCountEx(240)
		if (j238+j239+j240 == 3) then
			SetTaskTemp(1,10)		-- 已经开始洗点流程
			Talk(2,"rollback_prise","好了，你现在休息一下，恢复一下!","现在坐在我前面")
		elseif (j238 + j239 + j240 > 3) then
			Say("你先给我3颗水晶，我才能帮你!",1,"那我稍候回来/rollback_no")
		else
			Talk(1,"","你明明没有3颗水晶")
		end
	else
		Talk(1,"","100000 两都没有，我怎么帮你?")
	end
end

function jewel_none()
--	SetTask(13,GetTask(13) + 1)
	SetTaskTemp(1,1)		-- 记住是用技能点数洗的点（洗点变量值为1，非257）
	Talk(2,"rollback_prise","好了，你现在休息一下，恢复一下!","现在坐在我前面")
end

function rollback_cancel()		-- 已放弃的无用函数
	i = GetTaskTemp(1)
	if (i > 0) then		-- 如果已经开始流程，返还10W两银子
		Talk(1,"","我还你钱!")
		Msg2Player("还钱给你. ")
	end
end

function rollback_prise()
--- 先扣钱和宝石、置变量
	UTask13 = GetTask(13)
	j238 = GetItemCountEx(238)
	j239 = GetItemCountEx(239)
	j240 = GetItemCountEx(240)
	addon = GetTaskTemp(1)
	if (addon == 1024) then			-- 是免费特殊洗点
		Uworld137 = GetTask(137) + 40
		SetTask(137,Uworld137)
		AddMagicPoint(3)
	elseif (addon == 257) then		-- 是初次洗点，并且是用宝石洗的
		for i = 1,j238 do DelItem(238) end
		for i = 1,j239 do DelItem(239) end
		for i = 1,j240 do DelItem(240) end
		AddMagicPoint(3)		-- 加3点技能，抵销洗点扣除的3点正好对上。
		SetTask(13,UTask13 + 257)	-- 洗点变量的改变为原本值加上此次增加值（免费特殊洗点的+0）
	elseif (addon == 10) then		-- 不是初次洗点，必有宝石。也加3点技能
		for i = 1,j238 do DelItem(238) end
		for i = 1,j239 do DelItem(239) end
		for i = 1,j240 do DelItem(240) end
		AddMagicPoint(3)
		SetTask(13,UTask13 + 1)	-- 洗点变量的改变为原本值加上此次增加值
	elseif (addon == 1) then		-- 初次洗点，用的是技能
		SetTask(13,1)	-- 洗点变量的改变为原本值加上此次增加值
	else
		Talk(1,"","洗髓状态有的错误，请联系GM解决!")
		return 0
	end
	Pay(100000)
--- 然后开始洗点
	i = HaveMagic(210)		-- 轻功另外操作
	j = HaveMagic(400)		-- “劫富济贫”另外操作
	n = RollbackSkill()		-- 清除技能并返回所有技能点（包括轻功等特殊技能）
	x = 0
	if (i ~= -1) then x = x + i end		-- 这两句判断是排除从未学过轻功的人返回-1从而导致点数计算错误情况
	if (j ~= -1) then x = x + j end
	rollback_point = n - x - 3			-- 把技能点当做空闲点数返还，但先扣除轻功等
	if (rollback_point + GetMagicPoint() < 0) then		-- 如果洗成了负数，则当作0（为以后多次洗点保留）
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
--	AddMagic(53,1)				-- 隐藏的基础技能（长兵、短兵、远程）不必处理
--	AddMagic(1,1)
--	AddMagic(2,1)
	if (i ~= -1) then AddMagic(210,i) end			-- 如果学过轻功则加回原有等级
	if (j ~= -1) then AddMagic(400,j) end			-- 如果学过“劫富济贫”同样处理
	if (UTask13 == 254) or (UTask_13 == 510) then		-- 已经没有洗点机会了，提醒一下玩家
		Msg2Player("用3颗水晶进行技能洗髓，你该回家休息一下!")
		Say("你洗髓太多次了，经脉乱了，现在 <color=red>不能洗髓了<color> !",1,"我知道了. /KickOutSelf")
	else
		Msg2Player("已洗髓完技能点，你可以进行重新分配!")
		Say("已洗髓完技能点，你可以进行重新分配!",1,"好. /KickOutSelf")
	end
--	KickOutSelf()
end;

function no()
end
