-- 大淀　⒎人　段思成
-- by：Dan_Deng(2003-09-16)
-- update by xiaoyang(2004\4\22) 翠烟90级任务

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(14) == 1 then
		allbrother_0801_FindNpcTaskDialog(14)
		return 0;
	end
	Uworld126 = GetTask(126)
	Uworld36 = GetByte(GetTask(36),2)
	if (Uworld126 < 10) and (GetLevel() >= 90) and (Uworld36 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~="cuiyan") then
		Talk(6,"Uworld126_get","Haiz ....","C玭g t� v� sao l筰 th� d礽 ?","Ngi tr� tu鎖 ph秈 c� ch� hng l韓.","Ch糿g l� � trung nh﹏ c馻 c竎 h� kh玭g c� � y.","N祅g v蒼 c遪 y, nh璶g t﹎  ch誸.","Ch� c莕 ngi th祅h t﹎ th祅h �, chuy謓 g� c騨g c� th� th祅h. C竎 h� c� g� kh� kh╪, c� vi謈 n鉯..")
	elseif (Uworld126 == 10) and (HaveItem(391) == 0) then
		AddEventItem(391)
		Msg2Player("Nh薾 頲 th�")
		if (GetSex() == 0) then
			Talk(1,"","Mu鑞 g苝 m� nh﹏ c騨g kh玭g c莕 v閕 v� nh� v藋 u? Th� c遪 kh玭g c� c莔 n鱝.")
		else
			Talk(1,"","C竎 h� qu猲 mang th�.")
		end
	elseif (Uworld126 == 40) then
		SetTask(126,45)
		Talk(8,"Uworld126_jump","ng n鉯 l�!","祅 c玭g t� ... ngi ngi  cho L� Thu Th駓 hng t薾 c飊g vinh hoa ph� qu�, n� nh薾 nh� v藋 th� thi誹 g�, 10 lng n 100 lng c� y.","N鉯 nh� v藋 c騨g kh玭g ng, xin c竎 h� r阨 kh醝 n琲 n祔 nhanh cho.","祅 nh� th祅h, ngi ru m阨 kh玭g u鑞g mu鑞 u鑞g ru ph箃 h�, ta kh玭g ch辵 n鎖 nh� ngi n鱝 r錳, n誹 nh� ngi c遪 kh玭g tr� l阨, ta .. ta ..","H�  ","Nh薾 l蕐 ti觰 t�! ","Aa.....","祅 c玭g t�")
	elseif (Uworld126 == 45) then			-- 坊打蓐的
		Talk(1,"Uworld126_jump","Ngi tr鑞 kh玭g tho竧 kh醝 c竔 mi誹 n祔, xem chi猽..!")
	elseif (Uworld126 == 50) then
		Talk(8,"Uworld126_set","祅 c玭g t� kh玭g ph秈 l� i th� c馻 h緉!","May nh� ngi t韎 k辮 th阨, t筰 h� c遪 c� th� ch辵 ng 頲.","Ngi t� u t韎 y?","Ta  h鴄 v韎 L� Thu Th駓 n y",".....c�, ta c飊g l� c� nng n鉯 d鑙, n鉯 ngi b� thng n苙g.","Vi謈 n祔 kh玭g 頲 t鑤 cho l緈.","C� i h筺h ph骳, ch糿g l� kh� kh╪ kh玭g th� vt qua 頲 �?","筺 t� th祅h: H秓.. c竎 h� mu鑞 th� n祇 c騨g 頲. 祅 m� u nghe theo..")
	elseif (Uworld126 == 70) then
		Talk(3,"U126_70","Sao? L� c� nng t韎 th╩ ngi sao?","N祅g t韎, ch髇g ta n鉯 chuy謓 r蕋 vui v�, ngi gi髉 ta r蕋 nhi襲, 產 t�.","C莕 g� ph秈 c﹗ n�, ch� c莕 2 ngi h筺h ph骳, chuy謓 nh� th玦, c� ng g�.")
	elseif (Uworld126 > 10) and (Uworld126 < 50)then
		Talk(1,"","Trc l� do ta sai l莔 r錳, th藅 kh玭g bi誸 n猲 c秏 琻 nh� th� n祇 !...")
	else
		Talk(2,"","Ch髇g ta s鑞g � Чi L�, h籲g n╩ cung ph鬾g cho thi猲 tri襲, t� l鬭, n辬h b�, x� hng.","B鋘 qu﹏ Kim tham lam, c鑞g hi課 bao nhi猽 c騨g kh玭g .")
   end
end;

function Uworld126_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- 白符未学野球拳的，不允许接任务
		if (GetSex() == 0) then
			Talk(1,"","Huynh i ch h秓 �, t� th祅h minh k�.")
		else
			Talk(1,"","Huynh i ch h秓 �, t� th祅h minh k�.")
		end
	else
		Say("Th鵦 kh玭g d竚 gi蕌 gi誱, trc kia ta  c� l鏸 v韎 n祅g, b﹜ gi� h鑙 h薾  ch薽. Ta giao cho ngi m閠 phong th�. Hy v鋘g c竎 h� c� th� t� tay giao cho L� Thu Th駓.",2,"Chuy謓 n祔 kh� kh╪ g�/Uworld126_yes","T筰 h� c遪 c� vi謈, c竎 h� t譵 ngi kh竎 甶!/Uworld126_no")
	end
end

function Uworld126_yes()
	AddEventItem(391)
	SetTask(126,10)
	Msg2Player("Nh薾 頲 畂筺 t� th祅h th�, n Th髖 Y猲 m玭 giao cho L� Thu Th駓. ")
	AddNote("Nh薾 頲 畂筺 t� th祅h th�, n Th髖 Y猲 m玭 giao cho L� Thu Th駓.")
end

function Uworld126_no()
end

function Uworld126_jump()
	SetFightState(1)
	NewWorld(230,1613,3175)
end

function Uworld126_set()
	SetTask(126,60)
	Msg2Player("L鮝 g箃 Thu Th駓 甶 g苝 筺 T� Th祅h.")
	AddNote("L鮝 g箃 Thu Th駓 甶 g苝 筺 T� Th祅h.")
end

function U126_70()
	Talk(1,"","ng r錳, Thu Th駓 n鉯 ngi n g苝 chng m玭, kh玭g hi觰 c� chuy謓 g�.")
	SetTask(126,80)
	Msg2Player("N鉯 chuy謓 c飊g v韎 L� Thu th駓 r蕋 vui v�, nhanh 甶 t譵 Du蒼 Ng薽 Nh﹏.")
end
