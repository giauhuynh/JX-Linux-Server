-- NPC Th萴 C鰑 - BLH
-- GiaKaKa - 22/4/2014
--suyu
-- Update: Dan_Deng(2003-08-10)
--注意：越南只有一种元宝，系当芋我非的银元宝，符称叫金元宝，千蒡注意，钡号臃 343

-- \script\__\npc_blh_tham_cuu.lua

function main()
	UTask_world20 = GetTask(48)
	if ((CheckStoreBoxState(1) == 0 or CheckStoreBoxState(2) == 0 or CheckStoreBoxState(3) == 0) and  UTask_world20 == 1) then			-- 符合Ⅱ箱子的条件，允许购Ⅱ附加储物箱
		Say("Ta c� 1 rng th莕 k�, kh玭g nh鱪g gi� 頲 nhi襲 v藅 ph萴 m� c遪 c� th� kh鉧 l筰 an to祅. C� trung nguy猲 ch� m譶h ta c�. C� mu鑞 xem th� kh玭g?",4,"в ta th� xem/buy_addibox", "H醝 th╩ m閠 ch髏/task_ring","V� vi謈 m� r閚g rng/box_help", "Kh玭g h鴑g th�/no")
	elseif (UTask_world20 == 1) then
		task_ring()
	elseif (CheckStoreBoxState(1) == 0 or CheckStoreBoxState(2) == 0 or CheckStoreBoxState(3) == 0) then
		Say("Ta c� 1 rng th莕 k�, kh玭g nh鱪g gi� 頲 nhi襲 v藅 ph萴 m� c遪 c� th� kh鉧 l筰 an to祅. C� trung nguy猲 ch� m譶h ta c�. C� mu鑞 xem th� kh玭g?",3,"в ta xem th�/buy_addibox", "V� vi謈 m� r閚g rng/box_help", "Kh玭g h鴑g th�/no")
	else
		other_chat()
	end
end;

function task_ring()
	UTask_world20 = GetTask(48);
	if (UTask_world20 == 1) then
		Say("Mu鑞 mua gi飉 c� nng 蕐 c馻 h錳 m玭 �? H祅g h鉧 c遪 l筰 c馻 ta kh玭g nhi襲, ch� c遪 l筰 i b玭g tai v祅g n祔 l� kh� r�, ch� c� 200 lng th玦. ",2,"Mua/yes", "T竛 g蓇/other_chat","Kh玭g mua/no")
	end
end

function other_chat()
	Talk(3,"", "Ta t� T� Xuy猲 n, tr猲 阯g c� r蕋 nhi襲 th� ph�, th藅 l� nguy hi觤! ","Th藅 kh玭g th� ng� 頲 ta c� th� n khu v鵦 чng ёnh h� n祔 m� kh玭g h� b� cp! Ngi th蕐 c� l� kh玭g? ","Ta nghe ngi ta n鉯 m韎 bi誸, � y kh玭g ch辵 s� qu秐 l� c馻 quan ph�, m� t� m閠 ph竔 t猲 Thi猲 Vng Bang g� , h蘮 g� � y th藅 y猲 b譶h! ")
end

function yes()
	if(GetCash() >= 200)then
		Talk(1,"","Khuy猲 tai  g鉯 l筰 r錳! Xin gi� l蕐")
		Pay(200);
		AddEventItem(181);
		Msg2Player("B筺 nh薾 頲 m閠 i b玭g tai");
		AddNote("B筺 mua 頲 m閠 i b玭g tai � ch� Thng Nh﹏ 甧m v� giao cho A Phng")
--		SetTask(48, 2);
	else
		Talk(1,"","Kh竎h quan kh玭g  ti襫, khi n祇  h穣 quay l筰")
	end
end;

function buy_addibox()
		local szMsg = 
		{
				"Th萴 C鰑: Зy l� chi誧 rng 頲 l祄 t�  san h� xanh, c� th� cho ngi b� th猰 v藅 ph萴, c遪 c� th� kh鉧 l筰 m閠 c竎 an to祅",	--1
				"D飊g 50 Xu  mua rng 2/#buy_addibox_yes(50)",	--2
				"Ьt qu�! L莕 sau s� mua/no",			--3
				"Ta mu鑞 m� th猰 rng th� 3/#Bil_iWantOpenStoreBox(2)",			--4
				"Ta mu鑞 m� th猰 rng th� 4/#Bil_iWantOpenStoreBox(3)",			--5
		};
		Say(szMsg[1], 4, szMsg[2], szMsg[4], szMsg[5], szMsg[3]);
end

function Bil_iWantOpenStoreBox(BoxNum)
	local biCoin = 0
	if BoxNum == 2 then
		biCoin = 50
	elseif BoxNum == 3 then
		biCoin = 50
	else
		print("False! Bil_iWantOpenStoreBox - "..BoxNum)
		return
	end
	if CheckStoreBoxState(BoxNum) ~= 0 then
		return Talk(1,"","Ch糿g ph秈 huynh   nh� ta m� rng th� "..(BoxNum+1).." r錳 sao?")
	else
		if CheckStoreBoxState(BoxNum - 1) == 0 then
			return Talk(1, "", "в m� 頲 rng th� "..(BoxNum+1).." i hi謕 c莕 ph秈 m� rng th� "..BoxNum.." trc!")
		end
	end
	
	local nMyCoinCount = CalcEquiproomItemCount(4,417,1,-1)
	if (nMyCoinCount < biCoin) then
		return Talk(1,"","Tr猲 ngi c馻 quan kh竎h kh玭g c�  "..biCoin.." Ti襫 уng, khi n祇 thu th藀  h穣 n t譵 ti觰   m� th猰 rng!")
	else
		if (biCoin ~= 0 and nMyCoinCount >= biCoin) then
			Say("в m� rng th� <color=yellow>"..(BoxNum+1).."<color> chi ph� l祄 rng r蕋 t鑞 k衜, c莕 n <color=Orange>"..biCoin.."<color> Ti襫 ng, i hi謕 ch綾 ch緉 mu鑞 m� rng ch�!", 2, "Ta c﹏ nh綾 k� r錳!/#Bil_iWantOpenStoreBox_Sure("..biCoin..", "..BoxNum..")", "Tr阨! t v藋 sao,  ta suy ngh� l筰/no")
		else
			print("False! BoxNum: "..BoxNum..", nMyCoinCount: "..nMyCoinCount.."")
		end
	end
end

function Bil_iWantOpenStoreBox_Sure(biCoin, BoxNum)
	local nMyCoinCount = CalcEquiproomItemCount(4,417,1,-1)
	if nMyCoinCount < biCoin then
		return
	end
	ConsumeEquiproomItem(biCoin,4,417,1,-1)
	OpenStoreBox(BoxNum)
	SaveNow(); 
	Talk(1,"","Xin ch骳 m鮪g! <color=yellow>rng ch鴄  c馻 b筺  頲 m� r閚g.<color>")
	Msg2Player("Xin ch骳 m鮪g! <color=yellow>rng ch鴄  c馻 b筺  頲 m� r閚g.<color> Rng <color=yellow> "..(BoxNum+1).."")
end

function buy_addibox_yes(nNedCount)
	if (nNedCount == 0 or nNedCount == nil) then
		return
	end;
	if CheckStoreBoxState(1) ~= 0 then
		return Talk(1,"","Ch糿g ph秈 huynh   nh� ta m� rng th� 2 r錳 sao?")
	end
	local nCount = CalcEquiproomItemCount(4,417,1,-1)
	
	if (nCount < nNedCount) then
		Talk(1,"","V� kh竎h quan n祔 l筰 kh玭g 甧m theo Ti襫 уng r錳!, khi n祇 c� th� h穣 t韎 y t筰 h� s� l祄 cho v� c� trung nguy猲 n祔 ch� c� ta m韎 l祄 頲 th玦!")
		return 1;
	end
	
	-- DelItemEx( 343 );
	ConsumeEquiproomItem(nNedCount,4,417,1,-1)

	OpenStoreBox(1)
	
	SaveNow(); -- 涪即存盘
	  	
	Talk(1,"","Xin ch骳 m鮪g! <color=yellow>rng ch鴄  c馻 b筺  頲 m� r閚g.<color>")
	Msg2Player("Xin ch骳 m鮪g! <color=yellow>rng ch鴄  c馻 b筺  頲 m� r閚g.<color>")
end


function box_help()
	str=
	{
	"<#>M鏸 nh﹏ v藅 ch� mua 頲 m閠 ch鴆 n╪g m� r閚g rng th玦. N� s� theo b筺 su鑤, g錷 c� 60 �, ch鴆 n╪g v� nguy猲 l� s� d鬾g gi鑞g nh� rng ban u ch� kh玭g th� c蕋 gi� ti襫 b筩. ",
	"<#>Sau khi mua ch鴆 n╪g m� r閚g rng, b筺 nh薾 頲 m閠 m藅 m� d飊g  b秓 v� c竎 trang b� tr猲 ngi c騨g nh� trong rng",
	"<#>Sau khi nh蕁 v祇 m藅 m� s� kh鉧 l筰, c遪 trong t譶h tr筺g kh鉧, trang b� tr猲 ngi kh玭g 頲 m芻 l猲 c騨g nh� c雐 b�, nh璶g n� s� kh玭g 秐h hng n ch鴆 n╪g s絥 c� (Nh� 甶觤 s� PK qu� cao th� s� r琲 c竎 trang b� tr猲 ngi). ",
	"<#>Vi謈 thi誸 l藀 m藅 m�: nh蕁 v祇 giao di謓 rng ch鴄  n琲 thi誸 l藀 m藅 m�, s� hi謓 ra m閠 � nh�, tr猲  c� t� 0-9 s�  nh藀 v祇. ",
	"<#>L莕 u ti猲 thi誸 l藀 m藅 m� ta nh蕁 v祇 h祅g , c遪 n誹 b筺  thi誸 l藀 qua khi nh蕁 v祇 s� l� ch豱h s鯽 m藅 m�. ",
	"<#>Ta  hng d蒼 xong r錳, n誹 c莕 g� tr� gi髉 th� h穣 quay l筰 t譵 ta nh�. ",
	};
	Talk(6,"",str[1],str[2], str[3], str[4], str[5], str[6]);
end
	
	
function no()
end;
