--西北南区 凤翔府 ⒎人6蔡大叔对话　（拳倾天息任务）
-- By: Dan_Deng(2004-05-24)

function main(sel)
	Uworld75 = GetTask(75)
	U75_sub3 = GetTask(54)
	if (Uworld75 == 10) and (U75_sub3 < 10) then		-- 任务中，接取子任务
		if (HaveItem(384) == 1) then
			SetTask(54,10)
			AddNote("дn Thi誹 l﹎ t� gi髉 Th竔 i th骳 t譵 kim li猲 hoa. ")
			Msg2Player("дn Thi誹 l﹎ t� gi髉 Th竔 i th骳 t譵 kim li猲 hoa. ")
			Talk(1,"","Ti誧 l� ta c� i nghi猲 c鴘 h鋍 t藀 nh璶g kh玭g c� h礽 t�. Nghe n鉯 � Thi誹 L﹎ c� kim li猲 hoa c� th� gi髉 ta c� h礽 t�.")
		else
		 	Talk(1,"","B﹜ gi� ngay c� c竔 b鉵g c騨g kh玭g th蕐, l祄 sao ta c� th� giao nhi謒 v� cho ngi y?")
		end
	elseif (Uworld75 == 10) and (U75_sub3 == 10) then		-- 子任务蓐成判断
		if (HaveItem(26) == 1) then
			DelItem(26)
			SetTask(54,20)
			AddNote("T譵 頲 Kim li猲 hoa. Ho祅 th祅h nhi謒 v�. ")
			Msg2Player("T譵 頲 Kim li猲 hoa. Ho祅 th祅h nhi謒 v�. ")
			Talk(1,"","Ha ha! Зy ch輓h l� ch ng鋍 b閕 trong truy襫 thuy誸 y. H秓 ti觰 t�, th藅 c秏 琻 nh� ngi.")
		else
			Talk(1,"","Ch璦 t譵 頲 Kim li猲 hoa sao.")
		end
	else
		i = random(0,1)
		if (i == 0) then
			Talk(1,"","Th竔 i th骳: Th竔 gia ta m蕐 i danh ti課g, nh璶g n i ta kh玭g c� nam t� n鑙 d鈏, th藅 l� c� l鏸 v韎 li謙 t� li謙 t玭g.")
		else
			Talk(1,"","Th竔 i th骳: B蕋 hi誹 h鱱 tam, v� h藆 vi i nha!")
		end
	end
end;
