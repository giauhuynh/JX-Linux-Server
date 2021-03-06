-- 临安 ⒎人NPC 张浚（丐帮50级任务）
-- by：Dan_Deng(2003-07-28)
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	if allbrother_0801_CheckIsDialog(3) == 1 then
		allbrother_0801_FindNpcTaskDialog(3)
		return 0;
	end
	UTask_gb = GetTask(8)
	Uworld75 = GetTask(75)
	U75_sub5 = GetTask(56)
	if (UTask_gb == 50*256+20) and (HaveItem(139) == 0) then		--带着50级任务
		Talk(5,"L50_Step1","Trng i nh﹏ ch髇g ta l筰 g苝","L莕 trc nh� c� ngi trng ngh躠 tng tr�, l莕 n祔 c莕 ta gi髉 g�?","Bang ch� ph竔 ta t韎 a Trung Nguy猲 B秐 у cho ho祅g thng nh璶g ta l筰 kh玭g c� l謓h b礽 kh玭g th� v祇 cung di謓 ki課.","Kh玭g c莕 lo, ta c� m閠 l謓h b礽 ngi c莔 甶"," t� trng i nh﹏!")
	elseif (UTask_gb == 50*256+30) then
		Talk(5,"L50_Step2","Trng i nh﹏ y l� th玭g h祅h l謓h b礽!","Th� n竜 r錳?  g苝 頲 ho祅 thng ch璦?.","Kh玭g t譵 th蕐 ho祅g thng,ch� g苝 頲 T祇 c玭g c玭g, ch綾 h糿 l� th﹏ t輓 c馻 ho祅g thng, ta  giao  cho h緉!","Th玦 ch誸 ! i s� ch絥g l祅h, ngi c� ch� kh玭g bi誸, T祇 c玭g c玭g b蕐 l﹗ nay ﹎ th莔 giao d辌h v韎 b鋘 gi芻 Kim, ch糿g qua l� � v祇 ho祅g thng cho n猲 kh玭g ai l祄 g� 頲 h緉, nay v藋 l筰 r琲 v祇 tay h緉,giang s琻 x� t綾 ch綾 g苝 nguy hi詍.","Th� kh玭g ng� t韎 v祇 ho祅g cung l筰 b� l鮝, Trng i nh﹏ ng lo ta s� 甶 畂箃 l筰 !")
	elseif (UTask_gb == 50*256+50) then		--此处不再检测两样物品是否存在，个人觉得不是很有意义，而且也省了不少工作量
		Talk(3,"L50_Step3","Ta  甧m Trung Nguy猲 B秐 у giao l筰 cho Trng i nh﹏, mong ng礽 mau giao l筰 cho ho祅g thng.","Th藅 t鑤 ! ngi v� tri襲 nh  b� kh玭g 輙 c玭g s鴆","Th﹏ l� ngi T鑞g t蕋 ph秈 nh� th�.! ")
	elseif (UTask_gb >= 50*256+20) and (UTask_gb < 50*256+40) and (HaveItem(139) == 0) then
		AddEventItem(139)
		Msg2Player("L蕐 頲 l謓h b礽 ti課 v祇 ho祅g cung.")
		Talk(1,"","Th玭g h祅h l謓h b礽 b� m蕋, ng lo ta c遪 r蕋 nhi襲.")
	elseif (Uworld75 == 10) and (U75_sub5 < 10) then		-- 拳倾天息任务中，接取子任务
		if (HaveItem(384) == 1) then
			SetTask(56,10)
			AddNote("Nhi謒 v� ti誴 t� : gi髉 t� tu蕁 t譵 5 mi課g m� b筩.")
			Msg2Player("Nhi謒 v� ti誴 t� : gi髉 t� tu蕁 t譵 5 mi課g m� b筩")
			Talk(1,"","Ta kh玭g mu鑞 l祄 kh� h緉, n l骳  ta s� l祄 cho h緉 b� gi竝,ngi h穣 甶 t譵 gi髉 ta 5 mi課g m� b筩.")
		else
		 	Talk(1,"","Ch� mi謓g n鉯 l祄 sao ng tin c藋?.")
		end
	elseif (Uworld75 == 10) and (U75_sub5 == 10) then		-- 子任务完成判断
		if (GetItemCount(118) >= 5) then
			DelItem(118)
			DelItem(118)
			DelItem(118)
			DelItem(118)
			DelItem(118)
			SetTask(56,20)
			AddNote("T譵 頲 5 mi課g m� b筩 ho祅 th祅h nhi謒 v�.")
			Msg2Player("T譵 頲 5 mi課g m� b筩 ho祅 th祅h nhi謒 v�.")
			Talk(1,"","Thi誹 hi謕 l祄 vi謈 th藅 nhanh, c� g緉g l猲.")
		else
			Talk(1,"","Kho竛g th筩h v蒼 ch璦  h穣 c� g緉g h琻.")
		end
	else
		Talk(1,"","T� tu蕁 : th藅 l﹗ m韎 c� c� h閕 ng tay")
	end
end;

function L50_Step1()
	AddEventItem(139)
	AddNote("l筰 頲 l謓h v祇 ho祅g cung.")
	Msg2Player("l筰 頲 l謓h v祇 ho祅g cung.")
end

function L50_Step2()
	DelItem(139)
	SetTask(8,50*256+40)
	AddNote("L藀 t鴆 甶 l蕐 Trung Nguy猲 B秐 у")
	Msg2Player("L藀 t鴆 甶 l蕐 Trung Nguy猲 B秐 у")
end

function L50_Step3()
	SetTask(8,50*256+60)
	DelItem(199)
	AddNote("Х 甧m Trung Nguy猲 B秐 у giao cho T� Tu蕁! ")
	Msg2Player("Х 甧m Trung Nguy猲 B秐 у giao cho T� Tu蕁! ")
end
