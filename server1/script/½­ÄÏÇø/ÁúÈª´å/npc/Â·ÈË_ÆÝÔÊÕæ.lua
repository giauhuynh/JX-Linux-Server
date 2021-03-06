-- 龙泉村　⒎人　戚允真
-- by：Dan_Deng(2003-09-16)
-- 五毒教90级任务
-- update by xiaoyang(2004\4\13)

Include("\\script\\global\\repute_head.lua")

Include("\\script\\item\\skillbook.lua")

function main()
	Uworld124 = GetTask(124)
	Uworld37 = GetByte(GetTask(37),2)
	if ((Uworld124 < 10) and (GetLevel() >= 90) and (GetReputeLevel(GetRepute()) >= 5) and (Uworld37 == 127) and (GetFaction() ~= "wudu")) or 
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5895) == 0)	then
		Talk(6,"Uworld_wuget","C竎 h� n y t譵 ra c� vi謈 g�?","c� ph秈 l� v� b� k輕 thng t玭 c馻 ng� c gi竜 m� n y?","t筰 h� 產ng mang tr鋘g thng, th﹏ th� b� tr髇g ph秈 c  dng ti誹 c馻 V﹏ b蕋 t�, n猲 kh玭g th� gi髉 b� thi誹 hi謕 y r錳","::Чi hi謕 b� tr髇g ph秈 k辌h c c馻 V﹏ b蕋 t� sao?",":: N誹 ta c� th� gi髉 i hi謕 y gi秈 c th� ng礽 c� th� gi髉 ta v� b� k� n╪g c馻 ng� c gi竜 kh玭g?","Kh玭g th祅h v蕁 , nh璶g v� thi誴 hi謕 y li謚 c�  s鴆?")
	elseif(Uworld124 == 40) and (HaveItem(387) == 1) then
		Talk(5,"Uworld_wufinish","::Зy l� thu鑓 gi秈!",
		"Зy ng l� thu鑓 gi秈 r錳, ngi ng l� ngi t鑤! ",
		"::V藋 c遪 vi謈 l阨 h鴄 c馻 ngi v� b� k輕 ng� c gi竜",
		"V﹏g, c秏 琻 i hi謕  trng ngh躠 ra tay c鴘 gi髉, y l� l阨 h鴄 c馻 ta"," t�!")
	elseif(Uworld124 > 10) and (Uworld124 < 40) then
		Talk(1,"","篖TT6呛�")
	else
		Talk(1,"","Ngi c� nghe n鉯 n chuy謓 b鴆 'мa  s琻 h� x� t綾 g�  kh玭g?' C� th藅 l� c� b鴆 a   kh玭g? N誹 nh� c� 頲 n� trong tay r錳 th� vinh hoa ph� qu� hng c� m蕐 i c騨g kh玭g h誸.")
	end
end

function Uworld_wuget()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- 白名未学野球拳的，不允许接任务
		Talk(1,"","Hi謓 t筰 ta kh玭g th� ti誴 nh薾 nhi謒 v� n祔!")
	else
		Say("Ch糿g hay ngi s� b総 u t� u?",2,"Ta s� l猲 阯g n ng� c gi竜  h醝 th╩ tin t鴆/Uworld_wduok","Th玦, ta b薾 l緈, hay  khi kh竎 nh�/Uworld_wduno")
	end
end

function Uworld_wduok()
	SetTask(124,10)
	SetTask(5895,1)
	Msg2Player("B筺 n ng� c gi竜, v祇 kim x� tr筰  h醝 v� thu鑓 gi秈")
	AddNote("B筺 n ng� c gi竜, v祇 kim x� tr筰  h醝 v� thu鑓 gi秈")
end

function Uworld_wduno()
end

function Uworld_wufinish()
	DelItem(387)
	if ((GetTask(10) >= 70*256) and (GetTask(10) ~= 75*256)) or (GetTask(5895) == 1) then				-- 是五毒出师的，可以学到技能
		if GetLastFactionNumber() == 3 then
			Talk(2,"","B筺 bi誸 th猰 v� ﹎ m璾 th﹎ hi觤 c馻 V﹏ b蕋 t�","Tuy nhi猲 giang h� v蒼 l緈 c� nhi襲 kh骳 m綾, b筺 s� ti誴 t鬰 cu閏 h祅h tr譶h c馻 m譶h!")
			if (HaveMagic(353) == -1) then		-- 必须没有技能的才给技能
				AddMagic(353,1)
			end
			if (HaveMagic(355) == -1) then		-- 必须没有技能的才给技能
				AddMagic(355,1)
			end
			if (HaveMagic(390) == -1) then		-- 必须没有技能的才给技能
				AddMagic(390)
			end
			-- CheckIsCanGet150SkillTask()
			Msg2Player("Ho祅 th祅h nhi謒 v�, b筺 nh薾 頲 b� k� n╪g c蕄 90 c馻 Ng� c gi竜!")
			SetTask(124,255)
			SetTask(5895,255)
		end
	else
		SetTask(124,245)								--获得声望的设置变量245
	end
   add_repute = 30			-- 声望奖励：最大30点，从100级起每级递减4%
   AddRepute(add_repute)
   Msg2Player("Ho祅 th祅h nhi謒 v�, b筺 nh薾 頲 "..add_repute.." 甶觤 danh v鋘g.")
   AddNote("Ho祅 th祅h nhi謒 v�, b筺 nh薾 頲 "..add_repute.." 甶觤 danh v鋘g.")
end
