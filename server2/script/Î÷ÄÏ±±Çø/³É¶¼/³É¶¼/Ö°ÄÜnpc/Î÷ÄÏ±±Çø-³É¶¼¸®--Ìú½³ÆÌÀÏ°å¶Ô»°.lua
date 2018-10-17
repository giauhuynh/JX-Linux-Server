--description: 西南北区 成都府 铁匠铺迪板 峨嵋派10级任务
--author: yuanlan	
--date: 2003/5/24
-- Update: Dan_Deng(2003-08-12)

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Sau n祔 ngi c� mu鑞 t譵 th莥 h鋍 th� r蘮 th� c� n y t譵 ta, ao ╪ bao u鑞g c�."

function main(sel)
	UTask_em = GetTask(1)
	if ((UTask_em == 10*256+20) and (HaveItem(18) == 1) and (HaveItem(19) == 1)) then
		Talk(5, "", "th?r蘮 i ca , ngi c?th?gi髉 ta gh衟 hai m秐h gng ng th祅h m閠 kh玭g ?", "n誹 i l筰 ngi kh竎 , mu鑞 ph鬰 h錳 頲 m苩 gng ng th藅 kh?nh?l猲 tr阨 , nh璶g ta l筰 c?tay ngh?t?truy襫 , chuy猲 m玭 d飊g  tu b?gng ng , ngi coi nh? t譵 ng ngi , ch?l?..", "ngi ph秈 nhi襲 ti襫 ta m韎 b籲g l遪g ph鬰 h錳 gng ng?", "ch?c莕 ngi c?th?gi髉 ta t譵 頲 m閠 lo筰 g鋓 l?lng m?b筩 kho竛g th筩h , ta s?gi髉 ngi tu b?l筰 c竔 gng ng n祔 , nghe n鉯 th祅h t﹜ trong r鮪g c﹜ th?c?lng m?b筩 , c?r蕋 nhi襲 th?d?╪ th辴 ngi , cho n猲 b譶h thng kh玭g ai d竚 甶 o ?.","頲 r錳 , ta g鰅 l筰 hai kh鑙 gng ch?n祔 , l藀 t鴆 甶 t譵 lng m?b筩 .")
		DelItem(18)
		DelItem(19)
		SetTask(1, 10*256+40)
		AddNote("n th祅h  t譵 頲 th?r蘮 , bi誸 c莕 lng m?b筩  ph鬰 h錳 gng ng nh?c? ")
		Msg2Player("n th祅h  t譵 頲 th?r蘮 , bi誸 c莕 lng m?b筩  ph鬰 h錳 gng ng nh?c? ")
	elseif (UTask_em == 10*256+40) then
		if (HaveItem(118) == 1) then
			Talk(1, "", "r蕋 t鑤 ,  lng m?b筩 , ta  gi髉 ngi ph鬰 h錳 gng nh?c?")
			DelItem(118)
			AddEventItem(20)
			SetTask(1, 10*256+60)
			AddNote("Лa lng m?b筩 cho th?r蘮 ,  ph鬰 h錳 gng ng nh?c?")
			Msg2Player("K猽 th?r蘮 ph鬰 h錳 gng ng nh?c?")
		else
			tiejiang_city("<dec><npc>nghe n鉯 th祅h t﹜ trong r鮪g c﹜ c?lng m?b筩 , kh玭g c?lng m?b筩 kh玭g th?ph鬰 h錳 gng nh?c?");
		end
	elseif ((UTask_em == 10*256+60) and (HaveItem(20) == 0)) then		-- 任务中，莪镜丢杆
		AddEventItem(20)
		Msg2Player("t 頲 ph鬰 h錳 gng ng nh?c?")
		Talk(1,"","Ngi kh玭g c莔 gng n y ?")
	else
		tiejiang_city(TIEJIANG_DIALOG);
	end
end;

function yes()
Sale(13)  			--弹出交易框
end;

