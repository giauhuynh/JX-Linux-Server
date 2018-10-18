--西南北区 成都府 采药娠女对话（“采集药材”任务）
-- Update: Xiao_Yang(2004-04-26)（增加“采集药材任务”）

Include("\\script\\global\\repute_head.lua")

function main(sel)
	Uworld132 = GetTask(132)
	Uworld133 = GetByte(GetTask(133),1)
	if (Uworld132 == 10) and (HaveItem(112) == 1) and (HaveItem(113) ==1) and (HaveItem(114) ==1) and (HaveItem(115) ==1) and (HaveItem(116) ==1) then
		Talk(2,"Uworld132_finish","Ti觰 c� nng, th� ngi mu鑞 ta u c�","c� th藅 kh玭g ? r蕋 c秏 t� ngi !")
	elseif (GetLevel() >= 20) and (GetReputeLevel(GetRepute()) >= 2) and ((Uworld132 < 10) or ((GetGameTime() > Uworld132) and (Uworld132 > 255))) then		-- “采集药材”任务允许启动
		if (Uworld133 >= 5) then
			SetTask(133,0)
		end
		Talk(5,"Uworld132_get","...","ti觰 c� nng c� chuy謓 g� kh玭g?","thu鑓 c馻 ta 甶誱 g莕 y thi誹 m閠 s� 頲 li謚 quan tr鋘g , c竎 玭g ch� ti謒 thu鑓 ph秈 甶 Thng Ch﹗  mua .","Ta kh玭g hi觰 chuy謓 mua b竛 , nh璶g,, ta thng n ti謒 c馻 ngi mua thu鑓 , c� c竔 g� kh� kh╪ ngi vi謈 n鉯 ,kh玭g ch鮪g ta c� th� gi髉 ngi.","c� th藅 kh玭g ? ngi bi誸 n琲 n祇 c� th� t譵 頲 5 lo筰 thu鑓 : t?m鬰 t骳 ? a c萴 c?? thi課 c?? h?nh?c?c飊g linh chi sao","ha ha , qu?may m緉 , nh鱪g thu鑓 n祔 ta  th蕐 qua � dc vng c鑓 ")
	else
		i = random(0,2)
		if (i == 0) then
			Talk(1,"","h竔 thu鑓 thi誹 n�: ch髇g ta th祅h  ph?c薾 s琻 nh璶g nhi襲 , g莕 ch c?Nga Mi s琻 ? n骾 Thanh Th祅h , xa h琻 m閠 ch髏 甶觤 Thng s琻 ? cung lai s琻 ? d﹏ s琻 . s琻 nhi襲 , th秓 dc d?nhi猲 l?nhi襲 , h琻 n鱝 th辬h s秐 xuy猲 b鑙 ? x?hng ? ng祔 t?d筰 ? tr飊g c?")
		elseif (i == 1) then
			Talk(1,"","h竔 thu鑓 thi誹 n�: ta h竔 th秓 dc , 頲 ch髏 輙 甧m b竛 甶 , c?ch髏 b竛 cho ti謒 thu鑓 , i l蕐 ti襫 nu玦 s鑞g ta c飊g b?n閕")
		else
			Talk(1,"","h竔 thu鑓 thi誹 n�: cha m?ta r蕋 s韒 ngay khi ta c遪 b? ch?c遪 l筰 ta c飊g b?n閕 s鑞g nng t鵤 l蒼 nhau , b?n閕 l?ngi th﹏ duy nh蕋")
		end
	end
end;

function Uworld132_get()
	Say("v藋 ngi c� th� gi髉 ta h竔 m閠 ch髏 mang v� sao ?",2,"Ch� l� chuy謓 nh�, c� nng ch� m閠 ch髏. /Uworld132_yes"," n琲  r蕋 nhi襲 qu竔 v藅 , t筰 h� v� ngh� kh玭g tinh , t鑤 nh蕋 l� 甶 tu luy謓 th猰 /Uworld132_no")
end

function Uworld132_yes()
	SetTask(132,10)
	Msg2Player("C� ngi n鉯 � dc vng c鑓 th蕐 頲 n╩ lo筰 dc li謚 n祔, cam k誸 s� gi髉 c� nng h竔. ")
end

function Uworld132_no()
end

function Uworld132_finish()
	
	local nResult = 0;
	
	-- 检查物品是还存泽，如果非 1 则直接 return
	for i=112, 116 do
		nResult = HaveItem(i);
		if nResult~=1 then
			return
		end;
		DelItem(i);
	end;
	
	SetTask(132,GetGameTime()+3600)
	
	Uworld133 = GetByte(GetTask(133),1)
	Uworld133_2 = GetByte(GetTask(133),2)
	Cur_date = tonumber(date("%d"))
	if (Uworld133_2 == Cur_date) then
		Uworld133 = Uworld133 + 1
	else
		Uworld133 = 1
	end
	AddRepute(Uworld133)
	Msg2Player("Ngi t t韎"..Uworld133.."danh v鋘g tr?")
	if (Uworld133 >= 5)then
		SetTask(133,0)
		AddRepute(10)
		Msg2Player("nhi襲 l莕 ra tay tr?gi髉 , ngi t 頲 10 甶觤 tng thng ")
	else
		Uworld133 = SetByte(Uworld133,2,Cur_date)
		SetTask(133,Uworld133)
	end
end
