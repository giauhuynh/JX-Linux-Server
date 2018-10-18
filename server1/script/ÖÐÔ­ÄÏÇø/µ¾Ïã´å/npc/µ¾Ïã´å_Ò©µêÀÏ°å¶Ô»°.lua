--description: 新手村_药店老板
--author: wangzg	
--date: 2003/7/18
--modify wangzg 2003/7/21 17:00
--update 2003/7/28 yuanlan
-- Update: Dan_Deng(2003-08-07)

Include("\\script\\global\\timerhead.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main()
	UTask_world38 = GetTask(66)
	if (UTask_world38 == 1) then		--已接任务
  		Say("g n閕 Ti觰 Lan l� kh竎 quen, 玭g ta c莕 thu鑓 X� Hng H� C鑤 Cao, 750 lng 1 l�, n誹 c� 2 lo筰 nguy猲 li謚 X� Hng v� H� c鑤, ta s� bu鑓 thu鑓 mi詎 ph� cho.", 4, "Mua tr鵦 ti誴/buy", "T譵 nguy猲 li謚/source", "Mua lo筰 thu鑓 kh竎/yes","в ta suy ngh� l筰!/no")
	elseif (UTask_world38==2) then
		if (HaveItem(185) == 1) and (HaveItem(142) == 1) then
			if (GetTimerId() > 0) then		-- 另有计时器在运行中
				Talk(1,"","?")
				return
			end
			SetTimer(0.5 * CTime * FramePerSec, 6)									--开启计时器：半个时辰 * 时辰长 * 帧数
			Talk(2, "", "g ch�! Ta  t譵 頲 H� c鑤 v� X� Hng.", "Hai lo筰 dc li謚 n祔 u c�, n鯽 gi� sau ngi h穣 quay l筰 l蕐!")
			SetTask(66,3)
			DelItem(185)
			DelItem(142)
			AddNote("Sau khi t譵  nguy猲 li謚 ph秈 i n鯽 ti課g sau m韎 ch� 頲 thu鑓.")
			Msg2Player("Sau khi t譵  nguy猲 li謚 ph秈 i n鯽 ti課g sau m韎 ch� 頲 thu鑓.")
		else
  			Say("N誹 ngi c� th� t譵 頲 2 nguy猲 li謚 X� Hng v� H� C鑤, ta s� b鑓 thu鑓 mi詎 ph� cho ngi.", 3, "Mua tr鵦 ti誴 X� Hng H� C鑤 Cao!/buy","Ta mu鑞 mua thu鑓 kh竎./yes", "Kh玭g mu鑞 mua g�./no")
		end
	elseif (UTask_world38 == 3) then				-- 为计时器容错加入手动超时处理
		i = GetRestSec(6)
		if (i > 0) then
			Say("<#>Th阨 gian ch璦 , thu鑓 ch璦 l祄 xong 頲, ngi ph秈 ch� i th猰"..i.."<#> gi﹜.", 3, "Ta kh玭g mu鑞 i n鱝,  mua tr鵦 ti誴 cho r錳./buy","Ta mu鑞 mua thu鑓 kh竎/yes", "V藋 th玦 甶/no")
		else
			StopTimer()						--结束计时
			W66_getitem()
		end
	elseif (UTask_world38 == 4) then		-- 计时器已到时
		W66_getitem()
	else
		Say("Ngi  ╪ 5 c鑓 t筽 lng, kh玭g ph竧 h醓 nh鴆 u m韎 l�! Ch� ta tuy nh� nh璶g tuy謙 i kh玭g thi誹 th� g�! Ngi c� mu鑞 mua 輙 thu鑓 kh玭g?", 3, "Giao d辌h/yes","Ta n nh薾 nhi謒 v� s� nh藀/yboss", "Kh玭g giao d辌h/no")
	end
end;

function buy()
  	if (GetCash() < 750) then
  		Talk(1,"","Ngi kh玭g mang theo  ti襫.")
  	else
  		Pay(750)
  		AddEventItem(186)
  		Msg2Player("B筺 nh薾 頲 1 X� Hng H� C鑤 cao")
  		SetTask(66,5)
  		AddNote("Mua 頲 X� Hng H� C鑤 cao")
  		Msg2Player("Mua 頲 X� Hng H� C鑤 cao")
		if (GetTimerId() == 6) then			-- 正在合药计时中
			StopTimer()
		end
  	end
end

function source()
-- Say("药店老板：如果你能弄到麝香和虎骨两种原料，我也可以免费帮你合药。", 0)		--好象是重复了。
SetTask(66,2)
AddNote("C� th� n ch� H祅h T萿 v� Th� S╪  mua 2 dc li謚 tr猲")
end

function W66_getitem()
	AddEventItem(186)
	Msg2Player("B筺 nh薾 頲 1 X� Hng H� C鑤 cao")
	SetTask(66,5)
--	StopTimer()
	AddNote("B筺 nh薾 頲 1 X� Hng H� C鑤 cao")
end

function yes()
Sale(91);   			--弹出交易框
end;

function no()
end;
