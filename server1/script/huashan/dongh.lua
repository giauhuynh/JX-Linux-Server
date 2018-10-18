
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的赖
Include("\\script\\task\\partner\\partner_head.lua") --包含了图象调用
Include("\\script\\task\\partner\\partner_problem.lua") --调用 nt_getTask 同步变量到客户端的赖
IncludeLib("PARTNER")
IncludeLib("RELAYLADDER");	--排行榜

function partner_finishanswer(nChange)
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --获得召唤出同伴的index,同伴状态为召出或为不召出
	if (partnerindex <= 0) then
		Msg2Player("Ngi kh玭g c?b筺 ng h祅h,xin h穣 ki誱 b筺 ng h祅h.")
		partner_givetodo()
	elseif (partnerstate ~= 1) then
		Msg2Player("Xin m阨 甧m b筺 ng h祅h ra m韎 c?th?nh薾 thng.")
	elseif ( PARTNER_GetLevel(partnerindex) < 10) then
		if ( nChange == 1 ) then
			PARTNER_AddExp(partnerindex ,100) --回答对问题且同伴等级<10级时给加100经验。
			Msg2Player("Ch骳 m鮪g b筺 ng h祅h c馻 ngi thu 頲 100 ch髏 kinh nghi謒")
		else
			Msg2Player("Th藅 xin l鏸 ngi tr?l阨 ch璦 ch輓h x竎 y猽 c莡, kh玭g th?nh薾 thng")
		end
	else
		Msg2Player("Kinh nghi謒 nh薾 thng ch??b筺 ng h祅h c蕄 th蕄 h琻 10")
	end
end

function partner_jianhuangdz_fajiang1(nChange)
	if ( nChange == 1 ) then
		Msg2Player("Xin m阨 l莕 n鱝 Ki誱 Ho祅g  t?i tho筰 nh薾 l蕐 ph莕 thng.")
	end
end

partner_keeponproblem = {
[1] = partner_finishanswer,
[2] = partner_jianhuangdz_fajiang1,
}

function main()
	-- dofile("script/dongh.lua")
	local PlayerName = GetName()
	local Uworld1226 = nt_getTask(1226) --同伴教育任务长歌门人任务变量
	local Uworld1227 = nt_getTask(1227) --同伴教育任务长歌门人任务变量
	local Uworld1228 = nt_getTask(1228) --同伴教育任务长歌门人任务变量
	local Uworld1229 = nt_getTask(1228) --同伴教育任务长歌门人任务变量
	local Uworld1230 = nt_getTask(1230) --同伴教育任务长歌门人任务变量
	local Uworld1231 = nt_getTask(1231) --同伴教育任务长歌门人任务变量
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
		Describe(DescLink_JianHuangDiZi..": A , ngi qu?nhi猲 l祄 xong t蕋 c?nhi謒 v? Л頲 r錳 , nh薾 l蕐 ph莕 thng c馻 ngi sau s?c飊g ta i tho筰.",2, 
		"Nh薾 l蕐 ph莕 thng /jianhuangdizi_prize1", 
		"H駓 b?nhi謒 v?partner_killedu") 
	elseif ( Uworld1226 == 20 ) and ( GetBit(GetTask(1232),20) == 0 ) then 
		Describe(DescLink_JianHuangDiZi..": Л頲 r錳 , ta cu鑙 c飊g n鉯 cho ngi bi誸 m閠 輙 cao c蕄 ch thao t竎 k?x秓, nh譶 k? ch?ch髏 ta s?h醝 ngi m蕐 v蕁 . :<enter>" 
		.."<color=yellow><color=red>Ngi c?th?t 頲 bao nhi猽 b筺 ng h祅h, m鏸 ng b筺 c?th?h鋍 bao nhi猽 k?n╪g :<color> m閠 ngi ch琲 c?5 b筺 ng h祅h, nh璶g ch?c?th?cho g鋓 ra m閠. уng b筺 c?th?h鋍 ph?th猰 k?n╪g theo c蕄 b薱, t鎛g c閚g 16 c竔.<enter>" 
		.."<color=red>Nhi襲 b筺 ng h祅h  thay i :<color> Ngi u ti猲 mu鑞 b筺 ng h祅h ch鋘 ngi ngh?thi誸 i l筰 ng b筺 ch ng鋘 k? sau  s?甶觤 l鵤 ch鋘 ng b筺, c竔 n髏 l?頲 r錳. D?nhi猲 ngi c騨g c?th?tr鵦 ti誴 ?b筺 ng h祅h, b猲 tr竔 ki謓 甶觤 k輈h sau s?xu蕋 hi謓 t猲 b筺 ng h祅h c馻 ngi. Ch??: thi誸 l藀 b筺 ng h祅h thao t竎 kh玭g th?li猲 t鬰 ti課 h祅h, hai l莕 thao t竎 gi鱝 輙 nh蕋 gian c竎h n鯽 ph莕 chu玭g ng h?<enter>" 
		.."<color=red>Thay th?k?n╪g :<color> n誹 mu鑞 thay th?k?n╪g l骳 ngi ch?c莕 m?ra ng b筺 k?n╪g gi韎 m苩, 甶觤 qu猲 l穘g c竔 n髏 sau l鵤 ch鋘 hy v鋘g th?ti猽 ch k?n╪g, l骳 n祔 h?th鑞g s?hng ngi x竎 nh薾 c?hay kh玭g th藅 mu鑞 qu猲 l穘g n猲 k?n╪g, 甶觤 x竎 nh l?頲 甧m n猲 k?n╪g qu猲 l穘g r琲, sau ngi l?頲 h鋍 t藀 k?n╪g m韎 li評 . <enter>" 
		.."<color=red> ng b筺 h錳 ph鬰 sinh m筺g :<color> n誹 nh?ngi mu鑞 cho ng b筺 ch sinh m筺g h錳 ph鬰 , 甧m h緉 tri謚 h錳 l?頲 r錳 , x?vu kh玭g ph秈 l?cho g鋓 ra tr筺g th竔 ng b筺 l?c?th?t?ng h錳 ph鬰 sinh m筺g . <enter><color>" 
		.."Л頲 r錳, chu萵 b?xong qua l筰 p i v韎 ta ba o v蕁  甶.",3, 
		"B総 u tr?l阨 甶 /jianhuangdizi_problem", 
		"в cho ta l祄 c玭g vi謈 /no", 
		"H駓 b?nhi謒 v?partner_killedu") 
	elseif ( Uworld1226 == 20 and GetBit(GetTask(1232),20) == 1 ) then 
		local NpcCount = PARTNER_Count() 
		if ( NpcCount >= 5 ) then 
			Describe(DescLink_JianHuangDiZi..": C╪ c?th阨 gian ho祅 th祅h nhi謒 v? ta s?cho ngi m閠 t?ch蕋 b筺 ng h祅h t鑤. B蕋 qu?ngi b﹜ gi?ng b筺 s?lng  y. N誹 nh?ngi kh玭g c莕 ng b筺 l阨 c馻 ta 甧m cho ngi ph竧 ra tng thng , b蕋 qu?kh玭g h?n鱝 cho ngi b筺 ng h祅h. N誹 nh?ngi c莕 m閠 v?m韎, nh?v藋 xin 甶觤 k輈h sau n祔 tr?l筰 ch鋘 h筺g, trc gi秈 t竛 m閠 b筺 ng h祅h. ",2,
                        "Ta kh玭g c莕 b筺 ng h祅h m韎, ra nh薾 thng 甶/partner_goontofinishtask","Sau n祔 tr?l筰 /no") 
		else 
			Describe(DescLink_JianHuangDiZi..": c╪ c?nhi謒 v?ho祅 th祅h th阨 gian, ta s?cho ngi m閠 t?ch蕋 t鑤 h琻 ng b筺. N誹 nh?ngi kh玭g c莕 ng b筺 l阨 c馻 ta 甧m cho ngi ph竧 ra nh薾 thng, b蕋 qu?kh玭g h?n鱝 cho ngi. N誹 nh?ngi c莕 m閠 v?m韎 b筺 ng hanh, nh?v藋 xin 甶觤 k輈h  ta c莕 m韎 b筺 ng h祅h ch鋘 h筺g, ta 甧m cho ngi m閠 v?m韎 b筺 ng h祅h. ",4, 
			"Ta kh玭g c莕 b筺 ng h祅h m韎, ra nh薾 thng 甶 /partner_goontofinishtask", 
			"Ta c莕 m韎 b筺 ng h祅h /partner_goontogivepartner", 
			"Sau n祔 tr?l筰 /no", 
			"H駓 b?nhi謒 v?/partner_killedu") 
		end 
	elseif ( Uworld1226 == 0 ) then 
		Describe(DescLink_JianHuangDiZi..": Th籲g FA n祔 mu鑞 g?n祇 ?",2, 
		"Ta Fa  l﹗, nay mu鑞 c?th猰 ngi huynh /partner_givetodo", 
		--"Ta mang theo ngi ng b筺, mu鑞 cho h緉 l祄 nhi謒 v?gi竜 d鬰./partner_havetodo", 
		--"Ta mu鑞 xem trc m閠 ch髏 nhi謒 v?gi竜 d鬰 t飝 thu閏 n閕 dung./partner_question", -- t鎛g h頿 li評 t蕋 c?npc c?th?h醝 v蕁  ? ? ? ? ? ? 
		--"Ta mu鑞 r阨 kh醝 v﹏ trung tr蕁 /partner_goback", 
		"Tho竧/no") 
	else 
		Describe(DescLink_JianHuangDiZi..": S?ph?s韒 nh譶 th蕌 giang h?ch m璦 gi? t?c?th?ngo筰 li評. Ta c騨g kh玭g bi誸 l穙 nh﹏ gia 玭g ta b﹜ gi?n琲 n祇. N誹 nh?kia ng祔 ngi may m緉 c?th?g苝 ph秈 h緉, c?l?s?c??kh玭g ngh?t韎 thu ho筩h 甶. T鑤 l緈, nghi猰 ch豱h m?n鉯 甶, trong tr蕁 c?m蕐 v?萵 c?ch nh﹏ v藅 v?l﹎, ngi n誹 nh?mu鑞 hu蕁 luy謓 b筺 ng c馻 ngi, 甶 ngay t譵 b鋘 h?gi髉 m閠 tay. Nh鱪g ngi n祔 theo th?t?l?<color=red> L?Thanh, H綾 b筩h song s竧, Л阯g 秐h, Thu Y Th駓 <color>.N祔 c騨g <color=red> kh玭g th?<color> gi竜 d鬰 nhi謒 v?hu蕁 luy謓. уng th阨 ngi c?th?<color=red> l藀 t鴆 <color> b総 u d飊g gi竜 d鬰 nhi謒 v?hu蕁 luy謓 <color=red> m閠 b筺 ng h祅h kh竎 <color>.<enter>" 
		.."<color=red>Ch﹏ ch輓h t?ch蕋 t鑤 nh蕋 ng b筺, i kh竔 ch?c?s?ph?ta ki誱 ho祅g s?l蕁 thi猲 t礽 c?th?hu蕁 luy謓 甶 ra 甶. Ngi n誹 nh?c?may m緉 g苝 ph秈 h緉, ng祅 v筺 ch?d?d祅g b?qua !<color>",4, 
		"ng v藋, ta mu鑞 l蕐 nhi謒 v?gi竜 d鬰 /partner_killedu", 
		"Ta mu鑞 xem trc m閠 ch髏 n閕 dung nhi謒 v?gi竜 d鬰/partner_question", 
		"Ta mu鑞 r阨 kh醝 v﹏ trung tr蕁/partner_goback", 
		"K誸 th骳 i tho筰 /no") 
	end
end

function partner_goontofinishtask()
	Describe(DescLink_JianHuangDiZi..":"..PlayerName..", Ngi  ho祅 th祅h h鋍 t藀. C?th?xu蕋 s?! nh薾 l蕐 ph莕 thng sau li襫 r阨 甶 v﹏ trung 甶 , kh玭g n猲 qu猲 n琲 n祔 c竎 b籲g h鱱 , c?r穘h r鏸 thng tr?l筰 甶 m閠 ch髏 甶. ng r錳, c?th?t譵 s?huynh c馻 ta long n╩ nh薾 m閠 輙 <color=red> quan h?b筺 ng h祅h<color> k辌h t譶h nhi謒 v?, h緉 b﹜ gi?trong ngo礽 ng k裻 , tr猲 vai ch tr鋘g tr竎h qu?n苙g. G莕 y tr猲 giang h?c?m閠 c?<color=red> th莕 b?th?l鵦 <color> 產ng ﹎ th莔 h祅h ng , trong l遪g ta c?tr錸g b蕋 tng ch c秏 gi竎. Hy v鋘g ngi c?th?v穘 cu錸g lan v韎 t鴆 c騨g 甶 , h誸 th秠 tr﹏ tr鋘g !",2, 
          "Nh薾 l蕐 ph莕 thng /jianhuangdizi_prize2", 
          "Sau n祔 tr?l筰 /no")
end

function partner_goontogivepartner()
	local PlayerName = GetName()
	local partnercount = PARTNER_Count()                   --获取当前同伴数量
	nt_setTask(1249,2)  --设为2表示需要同伴
	if ( partnercount >= 5 ) then 
                Describe(DescLink_JianHuangDiZi..": Ngi b﹜ gi?c?nhi襲 b筺 ng h祅h, xin m阨 trc gi秈 t竛 m閠 v?ng b筺 s?c飊g ta i tho筰.",1,"K誸 th骳 i tho筰 /no") 
        else 
                Describe(DescLink_JianHuangDiZi..":"..PlayerName..", Ngi  ho祅 th祅h h鋍 t藀. C?th?xu蕋 s?! nh薾 l蕐 ph莕 thng sau li襫 r阨 甶 v﹏ trung 甶 , kh玭g n猲 qu猲 n琲 n祔 c竎 b籲g h鱱 , c?r穘h r鏸 thng tr?l筰 甶 m閠 ch髏 甶. ng r錳, c?th?t譵 s?huynh c馻 ta long n╩ nh薾 m閠 輙 <color=red> quan h?b筺 ng h祅h<color> k辌h t譶h nhi謒 v?, h緉 b﹜ gi?trong ngo礽 ng k裻 , tr猲 vai ch tr鋘g tr竎h qu?n苙g. G莕 y tr猲 giang h?c?m閠 c?<color=red> th莕 b?th?l鵦 <color> 產ng ﹎ th莔 h祅h ng , trong l遪g ta c?tr錸g b蕋 tng ch c秏 gi竎. Hy v鋘g ngi c?th?v穘 cu錸g lan v韎 t鴆 c騨g 甶 , h誸 th秠 tr﹏ tr鋘g.",2, 
               "Nh薾 l蕐 ph莕 thng /jianhuangdizi_prize2", 
               "Sau n祔 tr?l筰 /no") 
        end
end

function jianhuangdizi_prize1()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --获得召唤出同伴的index,同伴状态为召出或为不召出
		PARTNER_AddExp(partnerindex,2000,1)                   			--给当前同伴增加经验，+2100
		nt_setTask(1226,20)
	end
end

function jianhuangdizi_problem()
	 partner_edu(3,1,100,3,1232,20,2)
end

function jianhuangdizi_prize2()
	local Uworld1234 = GetGameTime() - nt_getTask(1234)
	if ( nt_getTask(1248) == 0 ) then
		nt_setTask(1248,Uworld1234)
	elseif ( nt_getTask(1248) > Uworld1234 ) then
		nt_setTask(1248,Uworld1234)
	end
	Msg2Player("Ngi l莕 n祔 ho祅 th祅h nhi謒 v?gi竜 d鬰 s?d鬾g h誸 "..Uworld1234.."gi﹜.")
	Ladder_NewLadder(10188, GetName(),-1 * Uworld1234,1);
	
	if ( nt_getTask(1249) == 2 ) then
		local w=random(1,4)
		local j=random(1,5)
		if  ( Uworld1234 >= 900 ) then
			if ( j == 1 ) then
				local partneridex = PARTNER_AddFightPartner(1,4,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch骳 m鮪g ngi  thu 頲 m閠 b筺 ng h祅h.")
			elseif ( j == 2 ) then
				local partneridex = PARTNER_AddFightPartner(2,2,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch骳 m鮪g ngi  thu 頲 m閠 b筺 ng h祅h.")
			elseif ( j == 3 ) then
				local partneridex = PARTNER_AddFightPartner(3,3,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch骳 m鮪g ngi  thu 頲 m閠 b筺 ng h祅h.")
			elseif ( j == 4 ) then
				local partneridex = PARTNER_AddFightPartner(4,1,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch骳 m鮪g ngi  thu 頲 m閠 b筺 ng h祅h.")
			else
				local partneridex = PARTNER_AddFightPartner(5,0,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch骳 m鮪g ngi  thu 頲 m閠 b筺 ng h祅h.")
			end
		elseif ( Uworld1234 >= 0 ) and ( Uworld1234 < 900 ) then
			local attribute = genRandNumArray(30,6,1,7) 
			if ( j == 1 ) then
				local partneridex = PARTNER_AddFightPartner(1,4,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch骳 m鮪g ngi  thu 頲 m閠 b筺 ng h祅h.")
			elseif ( j == 2 ) then
				local partneridex = PARTNER_AddFightPartner(2,2,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch骳 m鮪g ngi  thu 頲 m閠 b筺 ng h祅h.")
			elseif ( j == 3 ) then
				local partneridex = PARTNER_AddFightPartner(3,3,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch骳 m鮪g ngi  thu 頲 m閠 b筺 ng h祅h.")
			elseif ( j == 4 ) then
				local partneridex = PARTNER_AddFightPartner(4,1,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch骳 m鮪g ngi  thu 頲 m閠 b筺 ng h祅h.")
			else
				local partneridex = PARTNER_AddFightPartner(5,0,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch骳 m鮪g ngi  thu 頲 m閠 b筺 ng h祅h.")
			end
		end
	end
		
		local partnerindex,partnerstate = PARTNER_GetCurPartner()      --获得召唤出同伴的index,同伴状态为召出或为不召出
		local partner_addexp = floor(15000*(900/Uworld1234))
		PARTNER_SetTaskValue(partnerindex, 1, 2 );                            --将当前同伴设置为任务完成状态
		PARTNER_AddExp(partnerindex,partner_addexp,1)                   	  --给当前同伴增加经验
		
		nt_setTask(1226,0) --同伴教育任务剑皇弟子任务变量
		nt_setTask(1227,0) --同伴教育任务堑变量
		nt_setTask(1228,0) --同伴教育任务唐影变量
		nt_setTask(1229,0) --同伴教育任务白煞变量
		nt_setTask(1230,0) --同伴教育任务黑煞变量
		nt_setTask(1231,0) --同伴教育任务秋尧水变量
		nt_setTask(1232,0) --同伴教育任务堑统一字节位开关
		nt_setTask(1233,0) --同伴教育问答次数记数器
		nt_setTask(1234,0) --同伴教育任务计时器
		nt_setTask(1235,0) --同伴教育黑煞处问题答案
		nt_setTask(1243,0) --记⒓打木桩次数
		nt_setTask(1247,0) --记⒓教育任务中黑煞处沙袋击打次数
		nt_setTask(1249,0) --已经领过奖励了
		
		Msg2Player("Ch骳 m鮪g ngi ho祅 th祅h nhi謒 v?gi竜 d鬰 b筺 ng h祅h, h穣 tr﹏ tr鋘g, s?g苝 l筰 sau ! Ngi 甶 t譵 m閠 ch髏 ngh躠 qu﹏ th?l躰h long n╩ 甶 , h緉 c?l?c?ph秈 d飊g t韎 a phng c馻 ngi .")
end

-------------------------------------------------------同伴获得-----------------------------------------------

function partner_givetodo()                                --提供一个同伴
	local partnercount = PARTNER_Count()                   --获取当前同伴数量
	if ( partnercount == -1 ) then
		Msg2player("功能出现异常，请与GM联系。")
	elseif ( partnercount == 5 ) then
		Describe(DescLink_JianHuangDiZi..": Ngi  c?nhi襲 b筺 ng h祅h, ng c?tham n鱝",1, 
                "K誸 th骳 i tho筰 /no")
	else
		Describe(DescLink_JianHuangDiZi.." N誹 m?ngi  FA l﹗ n╩ nh?th?th?ta gi髉 dc, l鵤 ch鋘 1 ngi huynh  甶 n祇 !",6, 
               "Nh薾 b筺 ng h祅h h?kim/partner_getgold", 
               "Nh薾 b筺 ng h祅h h?m閏 /partner_getwood", 
               "Nh薾 b筺 ng h祅h h?th駓/partner_getwater", 
               "Nh薾 b筺 ng h祅h h?h醓 /partner_getfire", 
               "Nh薾 b筺 ng h祅h h?th?/partner_getdust", 
               "K誸 th骳 i tho筰 /no")
	end
end

function partner_getgold()
	Describe(DescLink_JianHuangDiZi.." ngi mu鑞 ch鋘 lo筰 n祇 t輓h t譶h ch kim h?ng b筺 ",5, 
                "Nh薾 Anh M穘h b筺 ng h祅h/partner_getgold1", 
                "Nh薾 V?Ch?b筺 ng h祅h/partner_getgold2", 
                "Nh薾 L璾 Manh b筺 ng h祅h/partner_getgold3", 
                "Nh薾 N鋋 Nhc b筺 ng h祅h /partner_getgold4", 
                "K誸 th骳 i tho筰 /no")
end

function partner_getgold1()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Kim")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getgold2()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Kim.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getgold3()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Kim.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getgold4()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Kim.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getwood()
	Describe(DescLink_JianHuangDiZi.."你要选择哪种性格的木系同伴",5,
		"Nh薾 Anh M穘h b筺 ng h祅h/partner_getwood1",
		"Nh薾 V?Ch?b筺 ng h祅h/partner_getwood2",
		"Nh薾 L璾 Manh b筺 ng h祅h/partner_getwood3",
		"Nh薾 N鋋 Nhc b筺 ng h祅h/partner_getwood4",
		"K誸 th骳 i tho筰/no")
end		

function partner_getwood1()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?M閏.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?M閏.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getwood2()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?M閏.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?M閏.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getwood3()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?M閏.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?M閏.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getwood4()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?M閏.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?M閏.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getwater()
	Describe(DescLink_JianHuangDiZi.."你要选择哪种性格的水系同伴",5,
		"Nh薾 Anh M穘h b筺 ng h祅h/partner_getwate1",
		"Nh薾 V?Ch?b筺 ng h祅h/partner_getwate2",
		"Nh薾 L璾 Manh b筺 ng h祅h/partner_getwate3",
		"Nh薾 N鋋 Nhc b筺 ng h祅h/partner_getwate4",
		"K誸 th骳 i tho筰/no")
end
		
function partner_getwate1()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th駓.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th駓.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getwate2()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th駓.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th駓.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getwate3()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th駓.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th駓.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getwate4()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th駓.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th駓.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getfire()
	Describe(DescLink_JianHuangDiZi.."你要选择哪种性格的火系同伴",5,
		"Nh薾 Anh M穘h b筺 ng h祅h/partner_getfire1",
		"Nh薾 V?Ch?b筺 ng h祅h/partner_getfire2",
		"Nh薾 L璾 Manh b筺 ng h祅h/partner_getfire3",
		"Nh薾 N鋋 Nhc b筺 ng h祅h/partner_getfire4",
		"K誸 th骳 i tho筰/no")
end

function partner_getfire1()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?H醓.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?H醓.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getfire2()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?H醓.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?H醓.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getfire3()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?H醓.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?H醓.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getfire4()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?H醓.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?H醓.")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getdust()
	Describe(DescLink_JianHuangDiZi.."你要选择哪种性格的土系同伴",5,
		"Nh薾 Anh M穘h b筺 ng h祅h/partner_getdust1",
		"Nh薾 V?Ch?b筺 ng h祅h/partner_getdust2",
		"Nh薾 L璾 Manh b筺 ng h祅h/partner_getdust3",
		"Nh薾 N鋋 Nhc b筺 ng h祅h/partner_getdust4",
		"K誸 th骳 i tho筰/no")
end

function partner_getdust1()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th?")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th?")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getdust2()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th?")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th?")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getdust3()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th?")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th?")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end

function partner_getdust4()
	local NowDate = tonumber(date("%y%m%d")) --获得当前日期
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th?")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch骳 m鮪g ngi thu 頲 m閠 b筺 ng h祅h h?Th?")
	else
		Msg2Player("Th藅 xin l鏸, h玬 nay b筺  nh薾 qu?nhi襲 b筺 ng h祅h, ng祔 mai quay tr?l筰 甶.")
	end
end


-----------------------------------------------------同伴教育任务开始---------------------------------------------

function partner_havetodo()                                     --已经带了一个同伴
	local Uworld1226 = nt_getTask(1226)                         --同伴教育任务长歌门人任务变量
	local partnerindex,partnerstate = PARTNER_GetCurPartner()   --获得召唤出同伴的index,同伴状态为召出或为不召出
	local NpcCount = PARTNER_Count()
	
	if ( NpcCount == 0 ) then -- nh?ch琲 trc m苩 m閠 ng b筺 u kh玭g c?
		Describe(DescLink_JianHuangDiZi..": B籲g h鱱, ngi m閠 ng b筺 u kh玭g c?l祄 g?nhi謒 v?nha ? trc l鵤 ch鋘 nh薾 l蕐 m閠 ban ng h祅h 甶.",1,"K誸 th骳 i tho筰/no") 
	elseif ( partnerstate == 0 ) then -- ng b筺 v?kh玭g g鋓 ra tr筺g th竔 
		Describe(DescLink_JianHuangDiZi..": B籲g h鱱, ngi trc m苩 kh玭g c?cho g鋓 b蕋 k?b筺 ng h祅h , g鋓 頲 d蒼 h緉 l祄 nhi謒 v?nha ? ",1,"C?th?l?ta ngh?sai r錳 /no") 
	elseif ( partnerindex>= 1 and partnerindex <= 5 ) then 
		local partner_finishtask = PARTNER_GetTaskValue(partnerindex,1) -- t 頲 trc m苩 cho g鋓 ra t韎 ng b筺 ch gi竜 d鬰 nhi謒 v?ti課 h祅h tr筺g th竔 
		if ( partner_finishtask == 1 ) then 
			Describe(DescLink_JianHuangDiZi..": Ngi c?b筺 ng h祅h  產ng l祄  gi竜 d鬰 nhi謒 v?, tr鵦 ti誴 m?ra F12 nhi謒 v?m苩 b秐 xem h緉 n猲 l祄 c竔 g?nhi謒 v?甶.",1," V﹏g ta hi觰 /no") 
		elseif ( partner_finishtask == 2 ) then 
			Describe(DescLink_JianHuangDiZi..": B籲g h鱱, ta ph鬰 ngi, ngi  l祄 xong nhi謒 v?gi竜 d鬰 b筺 ng h祅h ?.",1,"T鑤 t鑤, ta hi觰 /no") 
		elseif ( partner_finishtask == 0 ) then 
			Describe(DescLink_JianHuangDiZi..": C竔 tr蕁 n祔 thng m r錸g hang h? c?cho ph衟 u cao nh﹏. уng b筺 c馻 ngi hu蕁 luy謓 l骳 n誹 nh?c飊g b鋘 h?i tho筰, c?th?h鋍 t藀 n r蕋 u ch . Ngi 甶 t譵 v?g鋓 <color=red>? ti謒 <color> ch l穙 nh﹏ 甶. L蕐 <color=red>900 gi﹜ <color> v?gi韎 , nhi謒 v?ho祅 th祅h l骳 ph莕 thng a cho ngi ng b筺 t?ch蕋 c騨g 甧m c?thi猲 uy猲 chi bi謙.",2,
                    "B総 u nhi謒 v?/swordking_paiming",
                       "Sau n祔 tr?l筰 /no") 
		end 
	end
end

function swordking_paiming()
	nt_setTask(1226,10)									   --设置同伴教育任务开始
	nt_setTask(1234,GetGameTime())
	local partnerindex,partnerstate = PARTNER_GetCurPartner()   --获得召唤出同伴的index,同伴状态为召出或为不召出
	PARTNER_SetTaskValue(partnerindex,1,1)                 --设置当前同伴教育任务状态为开始
	Msg2Player("Ngi  b総 u nhi謒 v?gi竜 d鬰 b筺 ng h祅h. C?th?甶 trong tr蕁 t譵 nh鱪g th?kia 萵 c?nh﹏ v藅 h鋍 t藀.")
end
-----------------------------------------------------取消同伴教育任务----------------------------------------------------

function partner_killedu()
	Describe(DescLink_JianHuangDiZi..": Ngi c遪 c?m閠 l莕 c?h閕 , ngi x竎 nh <color=red> h駓 b?<color>nhi謒 v?b筺 ng h祅h ? n誹 nh?h駓 b?, nh?v藋 c竔 n祔 ng b筺 sau n祔 li襫 <color=red> kh玭g th?<color> l祄 ti誴 ng b筺 gi竜 d鬰 nhi謒 v?",2, 
     "Ta nh蕋 nh ph秈 h駓 b?/partner_killedureal", 
     "Cho ta suy ngh?l筰 m閠 ch髏 甶 /no")
end

function partner_killedureal()
	local NpcName = GetName()
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --获得召唤出同伴的index,同伴状态为召出或为不召出
	
	if ( nt_getTask(1226) == 0 ) then
		Describe(DescLink_JianHuangDiZi..":"..NpcName.."B籲g h鱱, ng cho l?ta l?ki誱 ho祅g  t?li襫 tu dng t鑤 kh玭g 頲, ngi c╪ b秐 kh玭g c?nh薾 ng b筺 gi竜 d鬰 nhi謒 v? y kh玭g ph秈 l?a b靚 ta ? ch輓h l?ph藅 c騨g n鎖 gi薾 n鱝 r錳 ! kh玭g mu鑞 l筰 c?h琲 th?l莕 nga.",1,
		"K誸 th骳 i tho筰/no")
	else
			local NpcCount = PARTNER_Count()
			if ( NpcCount ~= 0 ) then
				for i=1,NpcCount do	
					if ( PARTNER_GetTaskValue(i,1) == 1 ) then   --如果哪个同伴正在教育任务当中
						PARTNER_SetTaskValue(i,1,2)              --设置此同伴教育任务为完成状态
					end
				end
			end
			
				nt_setTask(1226,0) --同伴教育任务剑皇弟子任务变量
				nt_setTask(1227,0) --同伴教育任务堑变量
				nt_setTask(1228,0) --同伴教育任务唐影变量
				nt_setTask(1229,0) --同伴教育任务白煞变量
				nt_setTask(1230,0) --同伴教育任务黑煞变量
				nt_setTask(1231,0) --同伴教育任务秋尧水变量
				nt_setTask(1232,0) --同伴教育任务堑统一字节位开关
				nt_setTask(1233,0) --同伴教育问答次数记数器
				nt_setTask(1234,0) --同伴教育任务计时器
				nt_setTask(1235,0) --同伴教育黑煞处问题答案
				nt_setTask(1243,0) --记⒓打木桩次数
				nt_setTask(1247,0) --打沙袋的次数
				nt_setTask(1249,0) --已经领过奖励了
				
				Msg2Player("B筺 ng h祅h c馻 ngi gi竜 d鬰 nhi謒 v? h駓 b? nh?v藋 sau n祔 h緉 c騨g kh玭g c?th?l祄 ti誴..")
	end
end

--------------------------------------------------------同伴问答----------------------------------------------

function partner_question()
	Describe(DescLink_JianHuangDiZi..": T鑤 l緈, ?ch?n祔 c馻 ta ngi c?th?tu莕 tra n t蕋 c?v蕁  c﹗ tr?l阨. C騨g c?th?m譶h m?m韎 l祄 m閠 輙  m鬰. цi v韎 ngi x玭g x竜 v﹏ trung tr蕁 c竎 c?d﹏ thi誸 l藀 a ch quan t筽 c騨g l?l韓 c?b?輈h ch nga. C蕄 b薱 輙 h琻 10 c蕄 ch ng b筺 , ?ngi tr?l阨 i v韎 ta n鉯 l猲 v蕁  sau , ph秈 nh薾 頲 m閠 輙 nho nh?ph莕 thng.",3, 
          "Ta mu鑞 xem n閕 dung nhi謒 v?gi竜 hu蕁/partner_iwantsee", 
          "Ta mu鑞 l祄 m閠  m鬰 h醝 p /partner_iwantdoproblem", 
          "Sau n祔 tr?l筰 甶 /no")
end

function partner_iwantsee()
	Describe(DescLink_JianHuangDiZi..": 頲 r錳 , nh?v藋  cho ch髇g ta t韎 nh譶 m閠 ch髏 c飊g ng b筺 h?quan ch n閕 dung c?nh鱪g . ",6, 
        "B筺 ng h祅h kh鑞g ch?y誹 甶觤 /partner_control", 
        "B筺 ng h祅h thu閏 t輓h c飊g t?ch蕋 ch y誹 甶觤 /partner_property", 
        "B筺 ng hanh th﹏ m藅  ch y誹 甶觤 /partner_familiarity", 
        "B筺 ng h祅h k?n╪g ch y誹 甶觤 /partner_skills", 
        "B筺 ng h祅h l猲 c蕄 thao t竎 y誹 甶觤 /partner_advanced", 
        "Sau n祔 tr?l筰 nghe 甶 /no")
end

function partner_iwantdoproblem()
	partner_edu(10,1,100,20,0,0,1,1) 
	Msg2Player("B総 u h醝 p , ngi c?20 l莕 c?h閕, c莕 p i v韎 10 o  m鬰 m韎 c?th?r阨 甶 ngay.")
end

function partner_control()
	Describe(DescLink_JianHuangDiZi..":<color=yellow>B筺 ng h祅h l?m閠 l祄 b筺 ngi c飊g chung x玭g x竜 giang h?ch NPC. B筺 ng h祅h c?th?gi髉 ngi nh tr竎h luy謓 c蕄, ?ngi c飊g ngi kh竎 PK l骳 gi髉 ngi m閠 c竛h tay l鵦 , s?c遪 th豱h tho秐g cho ngi ch髏 nhi謒 v?t韎  cho ngi t 頲 m閠 輙 tr﹏ qu?ph莕 thng , d?nhi猲 ?ngi t辌h m辌h th阨 甶觤 c騨g c?th?th?c飊g ng b筺 tr?chuy謓 , n鉯 kh玭g ch鮪g s?xu蕋 hi謓 th?v?ch th辬h t譶h. Ngi c?th??ch?nh NPC ch?nh薾 頲 c竎 lo筰 ng b筺 t 頲 nhi謒 v?, khi ngi ho祅 th祅h nh鱪g nhi謒 v?n祔 li襫 c?th?t 頲 ng b筺 c馻 ngi li評. Ngi ch?c莕 ?ng b筺 ch kho竔 ti謕 lan trong t譵 頲 ng b筺 ch c╪ b秐 thu閏 t輓h c竔 n髏 sau  b猲 tr竔 ki謓 產n k輈h n?l?頲 r錳. Khi ngi c?u ngi ng b筺 ch th阨 甶觤 ngi ch?c莕 ?ng b筺 thu閏 t輓h m苩 b秐 ch ph輆 tr猲 甶觤 ch鋘 ngi mu鑞 tra x衪 ch ng b筺 ch ng鋘 k?l?頲 r錳. <color>",2, 
            "Tr?v?partner_iwantsee", 
            "Sau n祔 s?tr?l筰/no")
end

function partner_property()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
		.."<color=yellow>1. B筺 ng h祅h c?thu閏 t輓h g? b鋘 h?c?輈h l頸 g?? <enter>" 
		.."Tinh l鵦 : th莕 b?ti襪 ch蕋 , ng祔 sau m?ra ;<enter>" 
		.."T輓h t譶h : n猲 ng b筺 ch t輓h t譶h , b蕋 ng t輓h t譶h ch ng b筺 phng th鴆 h祅h ng c騨g s?b蕋 ng ; hi謓 h鱱 ch t輓h t譶h  th鮝 h譶h c?:<enter>" 
		.."Anh m穘h h譶h : s?c玭g k輈h c竎h h緉 g莕 nh蕋 ch i th?, c騨g kh玭g thi ? t?th﹏ t鎛 thng , c?kh?xa ch h祅h ng ph筸 vi . <enter>" 
		.."V?ch?h譶h : nh?ch琲 m鬰 ti猽 c玭g k輈h ho芻 b?c玭g k輈h l骳 , ng b筺 s?d?l蕐 hi謕 tr?, c騨g kh玭g thi ? t?th﹏ t鎛 thng , m閠 lo筰 產ng a nh?ph?c薾 . <enter>" 
		.."L璾 manh h譶h : s?c玭g k輈h m竨 thi觰 ch i th?, khi t?th﹏ m竨 輙 h琻 so v韎 20% l骳 v鮝 nh v鮝 ch箉 . <enter>" 
		.."H蘮 y誹 h譶h : s?ng蓇 nhi猲 c玭g k輈h i th?, b?c玭g k輈h l骳 s?v鮝 nh v鮝 ch箉 , sinh m筺g 輙 h琻 so v韎 20% l骳 s?h琻 u ch n?tr竛h . <enter>" 
		.." <enter>" 
		.."Ng?h祅h thu閏 t輓h : bi觰 hi謓 n猲 ng b筺 ch ng?h祅h , b蕋 ng ng?h祅h ch ng b筺 c?th?c?v?c玭g c飊g tuy謙 k?b蕋 ng , ng th阨 c?m閠 b?ph薾 ch ph?th猰 k?n╪g c騨g s?c?ng?h祅h ch h筺 ch?;<enter>" 
		.."T?ch蕋 : quy誸 nh ng b筺 ch thu閏 t輓h ?th╪g c蕄 l骳 c?th?t╪g l猲 u thi觰 ch tr?gi?. <enter>" 
		.."2. B筺 ng h祅h c?t?ch蕋 l?c竔 g?? <enter>" 
		.."B筺 ng h祅h thu閏 t輓h l?c?t?ch蕋 ch : sinh m筺g , l鵦 lng , m謓h trung , n?tr竛h , ch箉 t鑓 , may m緉 ; m閠 thu閏 t輓h ch t?ch蕋 c祅g cao ?ngh躠 n猲 thu閏 t輓h ?th╪g c蕄 l骳 t╪g l猲 ph秈 c祅g u , b蕋 qu?c?th?t╪g l猲 u thi觰 , c飊g t?ch蕋 ngi c馻 c騨g s?c?ch髏 輙 b蕋 ng . n鉯 th?d?nh?ngi c?hai ngi ng b筺 sinh m筺g t?ch蕋 u l?2 , kia khi h緉 c鯽 th╪g c蕄 ch th阨 甶觤 c?th?m閠 t╪g l猲 50 甶觤 sinh m筺g tr?gi?, m?m閠 ngi kh竎 ch?t╪g l猲 45 甶觤 sinh m筺g tr?gi?. nh鱪g th?n祔 c?th?t╪g l猲 tr?s??ng b筺 10 c蕄 ?30 c蕄 ?50 c蕄 ?90 c蕄 l骳 s?xu蕋 hi謓 m閠 輙 ba ng . <color>",2, 
		"Tr?v?partner_iwantsee", 
		"Sau n祔 tr?l筰 /no")
end

function partner_familiarity()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
	.."<color=yellow>1. C竔 g?l?b筺 ng h祅h  th﹏ m藅 ? ч th﹏ m藅 ch輓h l?ph秐 秐h ng b筺 c飊g nh?ch琲 quan h?tr?s?. <enter>",2, 
	"Tr?v?partner_iwantsee", 
	"Sau n祔 s?tr?l筰/no")
end

function partner_skills()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
	.."<color=yellow>1. Ta nh?th?n祇 甶 th╩ d?nh譶 ng b筺 ch k?n╪g gi韎 m苩 ? ngi ch?c莕 ?ng b筺 ch kho竔 ti謕 lan trong t譵 頲  ng b筺 ch v?c玭g k?n╪g c竔 n髏 sau  b猲 tr竔 ki謓 產n k輈h n?l?頲 r錳 . <enter>" 
	.."2. B筺 ng h祅h c?m蕐 lo筰 k?n╪g ? b鋘 h?nh?th?n祇 t 頲 ? ng b筺 ch k?n╪g c?b鑞  th鮝 :<enter>" 
	.." a. V?c玭g k?n╪g : ng b筺 d飊g  c玭g k輈h ch nh﹏ chi猽 th鴆 , th玭g qua th╪g c蕄 t 頲 ;<enter>" 
	.." b. B╩ ph遪g k?n╪g : i v韎 ph?b╪g l玦 h醓 c n╩ lo筰 kh竛g t輓h ti課 h祅h th猰 頲 ch k?n╪g , th玭g qua l祄 gi竜 d鬰 nhi謒 v?t 頲 ;<enter>" 
	.." c. Ph?th猰 k?n╪g : c竎 lo筰 th猰 頲 c飊g ph?tr?c飊g v韎 m閠 輙 c th?k?n╪g , th玭g qua k?n╪g s竎h c飊g k辌h t譶h nhi謒 v?t 頲 ;<enter>" 
	.." d. Tuy謙 k?: th玭g qua k辌h t譶h nhi謒 v?t 頲 ;<enter>" 
	.."3. B筺 ng h祅h k?n╪g nh?th?n祇 th╪g c蕄 ? ng b筺 ch v?c玭g k?n╪g l?d飊g  thu莕 th鬰 t韎 th╪g c蕄 ch , m?nh鱪g th?kh竎 k?n╪g to祅 b?mu鑞 th玭g qua s?d鬾g h?鴑g ch k?n╪g s竎h nh綾 t韎 th╪g . k?n╪g s竎h ch t╪g l猲 quy t綾 l?: ngi ch?c?th?h鋍 t藀 so ngi mu鑞 t╪g l猲 k?n╪g trc m苩 c蕄 b薱 cao 1 c蕄 ch k?n╪g s竎h . t?nh?; hi謓 h鱱 k?n╪g v?6 c蕄 , ngi ch?c?th?h鋍 t藀 7 c蕄 ch n猲 k?n╪g s竎h 甧m n猲 k?n╪g t╪g l猲 t韎 7 c蕄 , kh玭g th?vt c蕄 h鋍 t藀 . <enter>" 
	.."4. Nh?th?n祇  cho ng b筺 s?d鬾g k?n╪g ? ?v?c玭g k?n╪g lan ch h琲 th?m韎 c?n╩ ra chi猽 c竎h , m鏸 m閠 c竎h i bi觰 n猲 ng b筺 c?20% ch m蕐 ? s?s?d鬾g c竎h d苖 k?n╪g , c竎h b猲 trong nh璶g b?v祇 n猲 ng b筺 c?th?s?xu蕋 ch t飝 ?ch?ng k?n╪g . t?nh?: n猲 ng b筺 ch ra chi猽 c竎h trong th?ba  k?n╪g A c飊g hai k?n╪g B nh?v藋 n猲 ng b筺 s?xu蕋  k?n╪g A ch m蕐 ? l?ch輓h l?60% , s?xu蕋  k?n╪g B ch m蕐 ? l?ch輓h l?40% . <color>",2, 
	"Tr?v?partner_iwantsee", 
	"Sau n祔 tr?l筰 /no")
end

function partner_advanced()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
	.."<color=yellow>1. Ta c?th?t 頲 u ngi ng b筺 ? ? c?th?, m閠 nh?ch琲 c?th?t 頲 n╩ ng b筺 , nh璶g m閠 l莕 ch?c?th?cho g鋓 ra m閠 . <enter>" 
	.."2. Ta cu鑙 c飊g c閚g c?th?h鋍 u thi觰 c?ph?th猰 k?n╪g ? m閠 ng b筺 c?th?h鋍 ph?th猰 k?n╪g ch c?m s?theo c蕄 b薱 c馻 h緉 gia t╪g m?gia t╪g , t鎛g c閚g 16 c?. <enter>" 
	.."3. L祄 ta c?u ngi ng b筺 l骳 ta ph秈 nh?th?n祇 甶 thi誸 i b蕋 ng ng b筺 y ? ngi u ti猲 mu鑞 ??ng b筺 ch thu閏 t輓h gi韎 m苩 ch ph輆 tr猲 甶觤 ch鋘 ngi ngh?thi誸 i l筰 ng b筺 ch ng鋘 k?, sau  s?甶觤 ch鋘 gi韎 m苩 h琲 th?phng ch l鵤 ch鋘 ng b筺 c竔 n髏 l?頲 r錳 . d?nhi猲 ngi c騨g c?th?tr鵦 ti誴 ?ng b筺 ch kho竔 ti謕 lan trong t譵 頲 ng b筺 l鵤 ch鋘 c竔 n髏 , b猲 tr竔 ki謓 甶觤 k輈h sau s?xu蕋 hi謓 ngi c?ng b筺 ch t猲 , ngi ch?c莕 甶觤 k輈h ngi mu鑞 thi誸 i l筰 ng b筺 ch t猲 l?頲 r錳 . Ch??: thi誸 i ng b筺 thao t竎 kh玭g th?li猲 t鬰 ti課 h祅h , hai l莕 thao t竎 gi鱝 輙 nh蕋 gian c竎h n鯽 ph莕 chu玭g ng h?. <enter>" 
	.."4. Ta c?th?thay th?ph?th猰 k?n╪g ? ? c?th?, n誹 mu鑞 thay th?ph?th猰 k?n╪g l骳 ngi c莕 ch?c莕 m?ra ng b筺 k?n╪g gi韎 m苩 , 甶觤 qu猲 l穘g c竔 n髏 sau l鵤 ch鋘 hy v鋘g th?ti猽 ch k?n╪g l骳 n祔 h?th鑞g s?hng ngi x竎 nh薾 c?hay kh玭g th藅 mu鑞 qu猲 l穘g n猲 k?n╪g , l骳 n祔 甶觤 x竎 nh l?頲 甧m n猲 k?n╪g qu猲 l穘g r琲 , sau ngi li襫 c?th?甶 h鋍 t藀 ngi ngh?h鋍 hi誹 k?n╪g . <enter>" 
	.."5. N誹 nh?ngi mu鑞 cho ng b筺 ch sinh m筺g h錳 ph鬰 , 甧m h緉 tri謚 h錳 l?頲 r錳 , x?vu kh玭g ph秈 l?cho g鋓 ra tr筺g th竔 ng b筺 l?c?th?t?ng h錳 ph鬰 sinh m筺g . <color>",2, 
	"Tr?v?thng m閠 t莕g th鵦 n /partner_iwantsee", 
	"Sau n祔 tr?l筰 /no")
end

----------------------------------------------------------------------------------------------------------------

function partner_checkdo()
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --获得召唤出同伴的index,同伴状态为召出或为不召出
	local NpcCount = PARTNER_Count()
	if ( PARTNER_GetTaskValue(partnerindex, 1) ~= 1 ) then 
		Msg2Player("C竔 n祔 b筺 ng h祅h kh玭g ph秈 l?ngi mang theo  l祄 nhi謒 v?gi竜 d鬰, xin m阨 甧m ch輓h x竎 ng b筺 cho g鋓 ra t韎 l祄. ") 
	elseif ( NpcCount == 0 ) then 
		Msg2Player("Ngi trc m苩 kh玭g c?ng b筺, kh玭g 頲 nh薾 thng. ") 
	elseif ( partnerstate == 0 ) then 
		Msg2Player("Ngi trc m苩 kh玭g c?cho g鋓 ra b筺 ng h祅h, kh玭g 頲 nh薾 l蕐 ph莕 thng. ") 
	else 
		return 10 
	end
end

function partner_goback()
	local i = random(1,7)
	if ( i == 1 ) then
		 NewWorld(1,1542,3229)  -- 凤翔
	elseif ( i == 2 ) then
		 NewWorld(11,3127,5112) -- 成都
	elseif ( i == 3 ) then
		 NewWorld(37,1658,3167) -- 汴京
	elseif ( i == 4 ) then
		 NewWorld(78,1458,3240) -- 襄阳
	elseif ( i == 5 ) then
		 NewWorld(80,1663,2999) -- 扬州
	elseif ( i == 6 ) then
		 NewWorld(162,1608,3204)-- 大理
	elseif ( i == 7 ) then
		 NewWorld(176,1583,2949)-- 临安
	end	 	 	 	
end

function genRandNumArray(nSum, nArrayLen, nMinNum, nMaxNum)
	local aryRandNumArray = {}
	if (nMinNum * nArrayLen > nSum or nMaxNum * nArrayLen < nSum) then
		print("genRandNumArray: 参数不合法！")
		return nil
	end	
	local nRest = nSum
	--此循环分配至倒数第二个
	for i = 1, nArrayLen -1 do
		local nRestLen = nArrayLen - i	--剩拥分配的长度
		local nAverage = nRest / (nRestLen + 1) --剩拥分配的平均值
		local nRand = random(0, 10000)/10000 --随机数
		local nMin, nMax
		local nGen
		--调整最大最小范围
		nMin = nRest - nMaxNum * nRestLen
		if (nMin < nMinNum) then nMin = nMinNum end
		nMax = nRest - nMinNum * nRestLen
		if (nMax > nMaxNum) then nMax = nMaxNum end
		--分配当前
		--随机分配，浮动以平均值为中心的随机值
		if (nRand > 0.5) then 
			nGen = nAverage + (nMax - nAverage) * (nRand - 0.5) / 0.5
		else
			nGen = nAverage - ( nAverage - nMin) * (0.5 - nRand) / 0.5			
		end
		nGen = floor(nGen + 0.5) --取整
		nRest = nRest - nGen
		aryRandNumArray[i]  =  nGen
	end
	aryRandNumArray[nArrayLen] = nRest --分配最后一个
	return aryRandNumArray;
end


function no()
end
