-- 昆仑 仆役 叹息老人 20级任务
-- by：Dan_Deng(2003-07-30)
-- by: xiaoyang(2004\4\20) 私换秘笈任务（昆仑90级任务）

Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\repute_head.lua")

Include("\\script\\item\\skillbook.lua")

function main()
	UTask_kl = GetTask(9)
	Uworld130 = GetTask(130)
	Uworld31 = GetByte(GetTask(31),2)
	if (GetSeries() == 4) and (GetFaction() == "kunlun") then
		if ((UTask_kl == 20*256+10) and (HaveItem(7) == 1)) then		--20级任务进行中
			Talk(1,"L20_prise","Чi gia! Xng u L筩 У n祔 c� ph秈 c馻 玭g kh玭g?")
		elseif ((UTask_kl == 20*256) and (GetLevel() >= 20)) then		--20级任务
			Talk(4,"L20_get","C竔 xng u L筩 У c馻 l穙 b� m蕋 r錳, b﹜ gi� ph秈 l祄 g� y? H鮩! Nh蕋 nh b� k� n祇 l蕐 c緋 r錳!","Чi gia! g c莕 xng u L筩 У  l祄 g�?","Ngi m韎 n ng kh玭g? Th秓 n祇 m� ta c騨g kh玭g bi誸 l� ai. Ta ch輓h l� Th竛 T鴆 L穙 Nh﹏! Chng m玭 產ng luy謓 1 chi猽 tuy謙 th� v� c玭g, 產ng c莕 1 lng l韓 xng u L筩 У, b﹜ gi� b� k� n祇 nh c緋 r錳, Chng m玭 m� ch蕋 v蕁, c竔 th﹏ gi� c馻 ta ch緉 kh玭g b秓 to祅 頲! Ph秈 l祄 sao y? B﹜ gi� ph秈 l祄 sao y?","Sao kh玭g xu鑞g n骾  mua")
		else
			Talk(1,"","B筩h th� tng tri do an ki誱, chu m玭 ti猲 t ti誹 m quan")
		end
	elseif ((Uworld130 < 10) and (GetLevel() >= 90) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~="kunlun") and (Uworld31 ==127)) or
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5889) == 0) then
		Talk(8,"Uworld130_get","L穙 h竛 n祔 gng m苩 ch籲 ch辴 s裲, c鵦 k� x蕌 x�, m鏸 ng祔 u qu衪 l� r鬾g b猲 trong C玭 L玭 ph竔, r蕋 輙 n鉯 chuy謓, nh� th� ng sau che gi蕌 nh鱪g chuy謓 kh玭g th� cho ai bi誸 頲. Nghe u l穙 ch輓h l� Th竛 T鴆 L穙 Nh﹏ - Chng m玭 c馻 i trc","L穙 ti襫 b鑙!","L穙 ti襫 b鑙?...Х r蕋 l﹗ kh玭g c遪 ai g鋓 ta nh� th� n鱝. ","Ta nghe n鉯...l穙 ch輓h l� Chng m玭 i trc c馻 C玭 L玭","с l� chuy謓 c馻 r蕋 nhi襲 n╩ trc r錳, kh玭g nh綾 t韎 n鱝.","V穘 b鑙 nghe i danh c馻 ti襫 b鑙,n y th豱h gi竜!","Haha! Ngi v蒼 cho r籲g C玭 L玭 b﹜ gi� v蒼 c遪 l� 1 m ngi r阨 r筩 tranh gi祅h quy襫 l鵦 l蒼 nhau sao?","V藋 th� nh� th� n祇?")
	elseif (Uworld130 == 20)then
		Talk(8,"Uworld130_help","Х th蕐 g� ch璦?","Ch璦 th蕐 g� c�! ","Hi謓 t筰 C玭 L玭 ph竔 v蒼 t錸 t筰 nh鱪g t猲 nh� nh苩 soi m鉯 nh� th�, ngic莕 g� ph秈 k誸 nh鉳 v韎 m ngi !","V穘 b鑙 nghe n鉯 b鋘 h� h譶h nh� 產ng trao i Cu錸g Phong S藆 謓 v� Ng� L玦 Ch竛h Ph竝 g� ","Bi k辌h n╩ x璦 gi�  l苝 l筰! L穙 phu c騨g v� n╩ x璦 tu莕 t� truy襫 h誸 tuy謙 chi猽 cho 3  , g﹜ cho ch髇g nghi k� l蒼 nhau, n猲 h鋚 s鴆 l筰 ph� ta. B﹜ gi� 吳y!","Lo筰   v� s� nh� th�, kh玭g n猲  t﹎ n l祄 g�. C�  b鋘 ch髇g t� sinh t� t祅.","B蕋 lu薾 th� n祇, l穙 phu c騨g l� m閠 th祅h vi猲 c馻 C玭 L玭. Nh璶g l穙 phu kh玭g ti謓 ra tay, c� th� nh� ti觰 hi謕 y gi髉 chuy謓 n祔 kh玭g? L穙 phu c秏 k輈h v� c飊g, C玭 L玭 c騨g s� t鑤 h琻 trong v礽 n╩ t韎!","Л頲 th玦!")
   elseif (Uworld130 == 40) and (GetFaction() ~= "kunlun") then
   	Talk(4,"Uworld130_finish","Ti襫 b鑙! Ta  gi髉 玭g d箉 d� 2 t猲 n祔. Nh璶g ch� s� m蕐 t猲 ti觰 t鑤 n祔 b秐 ch蕋 kh� thay i, c騨g xin ti襫 b鑙 ra tay d箉 d�! ","V� c玭g c馻 ta to祅 b� kh玭g c遪,  xem nh� ngi t祅 ph� ","Sao?","Nh鱪g chuy謓 c� c騨g kh玭g n猲 nh綾 l筰 l祄 g� ")
   elseif (Uworld130 > 10) and (Uworld130 < 40)then
   	Talk(1,"","C玭 L玭 m謓h  nhi襲 tr綾 tr�, n誹 頲 c竎 v� ra tay gi髉 , l穙 phu th藅 s� c秏 k輈h v� c飊g! ")
	else
		Talk(1,"","L穙 gi� r錳! C騨g kh玭g c遪 h鱱 d鬾g n鱝!")
	end
end;

function L20_get()
	Say("Mua? T蕋 nhi猲 l� kh玭g th� mua 頲! C竔 xng u n祔 ta ph秈 ph� m蕋 r蕋 nhi襲 s鴆 l鵦 m韎 t譵 頲, l莕 n祔 b� nh c緋 th� ta ch誸 ch綾 r錳",2,"Ngi kh玭g c莕 ph秈 lo l緉g, ta s� gi髉 ngi t譵 l筰 c竔 xng u l筩  n祔. /L20_get_yes","V藋 th� kh玭g c遪 c竎h n祇 c� /L20_get_no")
end;

function L20_get_yes()
	Talk(1,"","Ngi ng l� hi謕 kh竎h t鑤 b鬾g, ch� c莕 ngi t譵 頲 xng u l筩 , ta s� ti課 c� ngi trc m苩 Chng m玭  tr� th祅h  t� c蕄 20")
	SetTask(9,20*256+10)
	AddNote("Nh薾 nhi謒 v� c蕄 20, t譵 l筰 xng u l筩  b� nh m蕋. ")
	Msg2Player("Nh薾 nhi謒 v� c蕄 20, t譵 l筰 xng u l筩  b� nh m蕋. ")
end;

function L20_get_no()
end;

function L20_prise()
	Talk(1,"","Зy r錳! Зy r錳! R蕋 c秏 琻 ngi! Ta nh蕋 nh s� ti課 c� ngi v韎 Chng m玭")
	DelItem(7)
	SetTask(9,30*256)
	-- SetRank(21)
--	AddMagic(174)
	add_kl(30)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	Msg2Player("Ch骳 m鮪g b筺! Х 頲 th╪g c蕄 th祅h C玭 L玭 ph竔 T� Vi H� Ph竝, h鋍 頲 Ky B竛 ph�. ")
	AddNote("T譵 頲 xng u l筩 , giao cho Th竛 T鴆 L穙 Nh﹏, ho祅 th祅h nhi謒 v�. Th╪g c蕄 th祅h T� Vi h� ph竝 ")
end;

function Uworld130_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- 白名未学野球拳的，不允许接任务
		Talk(1,"","Y誹 畊鑙 kh玭g c� s鴆 nh� ngi n鉯 nhi襲 c騨g v� 輈h!  甶!")
	else
		Say("N誹 ngi th鵦 s� mu鑞 h鋍, th� trc h誸 甶 ra ph輆 sau ng鋘 n骾, ch� c莕 nh譶 qua s� bi誸!",2," th� 甶 /Uworld130_yes","Ngi mu鑞 d箉 th� d箉, kh玭g d箉 th� th玦. /Uworld130_no")
	end
end

function Uworld130_yes()
	SetTask(130,10)
	SetTask(5889,1)
	Msg2Player("Th竛 T鴆 L穙 Nh﹏ mu鑞 b筺 甶 v遪g v遪g ra ph輆 sau n骾. ")
	AddNote("Th竛 T鴆 L穙 Nh﹏ mu鑞 b筺 甶 v遪g v遪g ra ph輆 sau n骾. ")
end

function Uworld130_no()
end

function Uworld130_help()
	SetTask(130,30)
	Msg2Player("Th竛 T鴆 L穙 Nh﹏ mu鑞 b筺 ng╪ ch苙 n閕 chi課, b筺 p 鴑g. ")
	AddNote("Th竛 T鴆 L穙 Nh﹏ mu鑞 b筺 ng╪ ch苙 n閕 chi課, b筺 p 鴑g. ")
end

function Uworld130_finish()
	if ((GetTask(9) >= 70*256) and (GetTask(9) ~= 75*256)) or (GetTask(5889) == 1) then
		if GetLastFactionNumber() == 9 then
			Talk(4,"","� y c� 1 quy觧 b� k輕 c馻 C玭 L玭, ngi h穣 theo  m� t藀 luy謓","Зy l祬?","Ch� hy v鋘g ngi nghi猰 t骳 luy謓 t藀, l骳 C玭 L玭 g苝 nguy kh�, c� th� ra tay y觤 tr�, l� l穙 gi� n祔  m穘 nguy謓 l緈 r錳. ","V穘 b鑙 tu﹏ l謓h")
			if (HaveMagic(372) == -1) then		-- 必须没有技能的才给技能
				AddMagic(372,1)
			end
			if (HaveMagic(375) == -1) then		-- 必须没有技能的才给技能
				AddMagic(375,1)
			end
			if (HaveMagic(394) == -1) then		-- 必须没有技能的才给技能
				AddMagic(394)
			end
			
			Msg2Player("H鋍 頲 k� n╪g C玭 L玭 Ng筼 Tuy誸 Ti誹 Phong, L玦 чng C鰑 Thi猲, T髖 Ti猲 T� C鑤 ")
		end
 		SetTask(130,255)
 		SetTask(5889,255)
		
	else
	   SetTask(130,245)  --获得声望的设置变量245
	end
   add_repute = 30
   AddRepute(add_repute)
   Msg2Player("H鉧 gi秈 m閠 cu閏 n閕 chi課, ho祅 th祅h nhi謒 v�. Danh v鋘g c馻 b筺 t╪g th猰 "..add_repute.." 甶觤.")  
   AddNote("H鉧 gi秈 m閠 cu閏 n閕 chi課, ho祅 th祅h nhi謒 v�. ")
end
