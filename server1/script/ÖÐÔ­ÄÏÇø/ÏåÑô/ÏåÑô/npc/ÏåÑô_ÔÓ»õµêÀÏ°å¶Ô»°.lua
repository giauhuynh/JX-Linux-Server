--description: 中原南区 襄阳府 杂货店老板对话	武当派20级任务
--author: yuanlan	
--date: 2003/5/14
-- Update: Dan_Deng(2003-08-08)
-- Update: Dan_Deng(2003-08-17)
Include("\\script\\global\\global_zahuodian.lua");

function main(sel)
	UTask_wd = GetTask(5);
	if (UTask_wd == 20*256+40) and (HaveItem(66) == 1) then
		Talk(2, "", "Ngi c� th� gi髉 ta tu b� c竔 o b祇 n祔 sao ?", "Con ta l猲 V� ng s琻 h竔 l� thu鑓 b� h醓 lang trong ng ch lang <color=Red><color> tha 甶 r錳 , ngi n祇 c� th� gi髉 ta c鴘 n� ?!","C鴘 ngi kh萵 c蕄, ta gi髉 ngi b竜 l筰 cho ng b祇")
		SetTask(5, 20*256+50)
		DelItem(66)
		AddNote("? Tng Dng t譵 頲 ch� ti謒 t筽 h鉧, bi誸 con trai c馻 n祅g b� d� lang � <color=red>H醓 Lang чng <color> tha 甶 r錳. ")
		Msg2Player("? Tng Dng t譵 頲 ch� ti謒 t筽 h鉧, bi誸 con trai c馻 n祅g b� d� lang � <color=red>H醓 Lang чng <color> tha 甶 r錳. ")
	elseif (UTask_wd == 20*256+50) then
		if (HaveItem(67) == 1) then
			Talk(3,"","Ngi l� ﹏ nh﹏ c鴘 con trai ta, c莕 tr� gi髉 g� c� vi謈 n鉯!","C� th� gi髉 ta s鯽 c竔 o b祇 n祔 kh玭g? ","Kh玭g th祅h v蕁 , v� b竜 p ﹏ c鴘 m筺g, ta s� kh玭g l蕐 ti襫 !")
			DelItem(67)
			AddEventItem(68)
			Msg2Player("Чo b祇  s鯽 xong. ")
			SetTask(5, 20*256+80)
			AddNote("Ch� ti謒 t筽 h鉧 d飊g t祄 ti b� s鯽 xong o b祇.")
		else
			Say("Con ta l猲 V� ng s琻 h竔 l� thu鑓 b� h醓 lang trong ng ch lang <color=Red><color> tha 甶 r錳 , ngi n祇 c� th� gi髉 ta c鴘 n� ?!", 2, "Ta ch� mu鑞 mua 1 輙  /yes", "Ta bi誸 r錳 /no")
		end
	elseif (UTask_wd == 20*256+80) and (HaveItem(68) == 0) then		-- 道具丢了
		AddEventItem(68)
		Talk(1,""," nh﹏, ngi qu猲 o b祇 li評")
	else
		local Buttons = store_sel_extend();
		Say("Ch� ti謒 t筽 h鉧: Ng礽 n y c� vi謈 g� ?", getn(Buttons), Buttons);
	end
end;

function yes()
	Sale(11)  			--弹出交易框
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;
