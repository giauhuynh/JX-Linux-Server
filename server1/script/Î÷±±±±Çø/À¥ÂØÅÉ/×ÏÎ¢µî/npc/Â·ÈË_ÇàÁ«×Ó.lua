-- 昆仑 弟子 青莲子 40级任务
-- by：Dan_Deng(2003-07-30)
Include("\\script\\global\\skills_table.lua")

function main()
	UTask_kl = GetTask(9);
	if (GetSeries() == 4) and (GetFaction() == "kunlun") then
		if ((UTask_kl == 40*256+20) and (HaveItem(9) == 1)) then		--40级任务完成
			Talk(2,"L40_prise","H� ph竝! Зy c� ph秈 l� Huy誸 H錸 Th莕 Ki誱","H秓 ki誱! Th藅 l� h秓 ki誱! Ha! Ha! Ha! B鎛 t鋋  kh玭g nh譶 l莔 ngi, ngi ng l� c� t礽! Л頲! B鎛 t鋋 s� th╪g ngi th祅h i  t� c蕄 40!")
		elseif (UTask_kl == 40*256) and (GetLevel() >= 40) then		--40级任务
			Say("N骾 C玭 L玭 v� ph輆 b綾 c� nh Ki課 T輓h phong, truy襫 thuy誸 tr猲 nh c蕋 gi蕌 1 thanh tuy謙 th� h秓 ki誱 Huy誸 H錸 Th莕 Ki誱, r蕋 nhi襲 ngi v� mu鑞 t 頲 thanh ki誱 n祔 m�  b� m筺g ho祅g tuy襫, ngic� gan 甶 畂箃 l蕐 thanh b秓 ki誱 n祔 kh玭g?",2,"е t� ch蕄 nh薾 th� 1 phen. /L40_get_yes","е t� v� c玭g y誹 k衜, s� kh玭g l祄 n鎖 chuy謓 n祔 /L40_get_no")
		elseif (UTask_kl >= 50*256) then
			Talk(1,"","B秓 ki誱 n tay, trc h誸 l� tr� kh� l穙 s� huynh ng gh衪, sau  l� ti猽 di謙 t猲 s�  hay c秐 tr�. ch� c莕 i 1 c� h閕..Ha! Ha! Ha! ")
		else
			Talk(1,"","Ch� c莕 Huy誸 H錸 Th莕 Ki誱 n tay, ta s� c� th�....Ha! Ha! Ha! ")
		end
	else
		Talk(1,"","C玭 L玭 ph竔 ch髇g ta r蕋 畂祅 k誸 thng y猽 nhau. c bi謙 l� ta v� chng m玭 Tuy襫 C� T�, Ng鋍 Ho祅h T鰠")
	end
end;

function L40_get_yes()
	Talk(1,"","Ch� c莕 l蕐 頲 Huy誸 H錸 Th莕 Ki誱, ta s� th╪g c蕄 ngi th祅h  t� c蕄 40!")
	SetTask(9,40*256+10)
	AddNote("Nh薾 nhi謒 v� c蕄 40 C玭 L玭 ph竔: T筰 nh Ki課 T輓h 畂箃 l蕐 thanh Huy誸 H錸 b秓 ki誱. ")
	Msg2Player("Nh薾 nhi謒 v� c蕄 40 C玭 L玭 ph竔: T筰 nh Ki課 T輓h 畂箃 l蕐 thanh Huy誸 H錸 b秓 ki誱. ")
end;

function L40_get_no()
end;

function L40_prise()
	Talk(1,""," t� H� ph竝! ")
	DelItem(9)
	SetTask(9,50*256)
	-- SetRank(23)
--	AddMagic(175)
--	AddMagic(181)
	add_kl(50)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	Msg2Player("Ch骳 m鮪g B筺! Х 頲 th╪g c蕄 th祅h C玭 L玭 ph竔 Th竔 Vi H� Ph竝! H鋍 頲 v� c玭g Khi H祅 Ng筼 Tuy誸, Kh� T﹎ ph� ")
	AddNote("箃 頲 Huy誸 H錸 Th莕 Ki誱, ho祅 th祅h nhi謒 v� c蕄 40 c馻 C玭 L玭 ph竔, th╪g ti課 th祅h Th竔 Vi H� Ph竝. ")
end;
