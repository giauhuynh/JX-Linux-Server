-- 大淀　职能　城放蔚兵甲&城放蔚兵乙
-- by：Dan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-05-27) 小儿失罪任务

Include("\\script\\global\\repute_head.lua")
Include("\\script\\global\\map_helper.lua")
npc_name = "<#>Th祅h m玭 v� binh"

function default_talk()
--	UTask_world42 = GetTask(42)	-- 设址任务变缚
--	if ((UTask_world42 == 0) and (GetLevel() >= 80) and (GetReputeLevel(GetRepute()) >= 7)) then		-- 任务启动，声蓰等级狠声蓰值的关系不是很拂确，要问拂白
--		Talk(6,"U42_get","城放蔚兵甲：听说城碉最近迪有小孩无故失罪？","城放蔚兵乙：是啊。我原荡的姘莘叶花，她二小子也不见杆，最近常荡烦我帮她找儿子。","萱家：附位，究竟怎反回盛？","城放蔚兵甲：呵呵，这位大系仪表谭谭，英拂神武，看荡是想管管这档子盛咯？","萱家：枯气，⒎见不平拔刀系助是我辈本分。","城放蔚兵乙：哎呀，今蓓的酒钱悍象坊带够啊！")
--	else
		Talk(4,"","H玬 nay ta th蕐 頲 9 m� nh﹏.","Ti觰 t� ch竛 s鑞g ah!","Nh祅 h� t鵸 h鱱 nh祅 h�, kh竛 gi� kh竛 na, i li評 d� h穙.","Kh玭g sai! Th藅 tuy謙 p! ")
--	end;
end;

function U42_get()
	Say("ng r錳, l� 5 v筺 lng.",2,"Hai v� i hi謕 th藅 th� v�/yes1","G箃 頲 ngi kh竎, l祄 sao g箃 頲 ta!/no")
end;

function yes1()
	if (GetCash()>=50000) then 
		Pay(50000)
		Talk(1,"","C竎 h� th藅 h祇 ph鉵g. Nhanh 甶 Dc vng c鑓 h醝 Qu秈 nh﹏ ch﹏ nh﹏. H緉 bi誸 b� m藅 n祔.")
		SetTask(42, 10)
		AddNote("Nh薾 nhi謒 v�:  Dc Vng C鑓 t譵 qu秈 ch﹏ o nh﹏ h醝 th╩ tin t鴆 a tr�. ")
		Msg2Player("Nh薾 nhi謒 v�:  Dc Vng C鑓 t譵 qu秈 ch﹏ o nh﹏ h醝 th╩ tin t鴆 a tr�.")
	else
		Talk(1,""," 甶, kh玭g c� ti襫 th� i l祄 c竔 g�, tr� v� l祄 n玭g 甶!")
	end
end;

function no()
	Talk(1,""," 甶, kh玭g c� ti襫 th� i l祄 c竔 g�, tr� v� l祄 n玭g 甶!")
end;
