--description: 中原北区 汴京府 铁匠1对话 天忍教出师任务
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)
Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc> Trc kia ta y th� r蘮 c鯽 h祅g ch l祄 ╪ nh璶g h錸g h醓 li評, bao nhi猽 danh s� hi謕 kh竎h c騨g n ta y m� nh ch� binh kh�, hi謓 nay kh玭g n鉯 c騨g 頲! C� mu鑞 nh譶 m閠 ch髏 hay kh玭g ta y m� ch binh kh� ?"


function main(sel)
	UTask_tr = GetTask(4)
	if (UTask_tr == 60*256+20) then
		UTask_trsub60 = GetByte(GetTask(28),1)
		if (UTask_trsub60 == 0) then
			tiejiang_city("<dec><npc>Ta n╩ nay ba mi r錳, kh玭g c� ci v�, ai, t筰 sao kh玭g c� ai th輈h ta y ? Kh玭g n鉯 g箃 ngi, th藅 ra th� ta th藅 th輈h th祅h ng Trng Qu� Ph�, nh璶g l� ta m閠 m鵦 kh玭g d竚 hng n祅g th� t閕, ta s� n祅g gh衪 ta.", "Ta thay ngi h醝 m閠 ch髏 t﹎ � c馻 n祅g!/L60_sub_yes")
		elseif (UTask_trsub60 == 1) then
			if (HaveItem(63) == 1) then
				tiejiang_city("<dec><npc>Qu� l祄 phi襫 ngi , ng﹏ tr﹎ thay ta a cho n祅g 頲 kh玭g?")
			else
				AddEventItem(63)
				Talk(1,"","Ngi c遪 kh玭g c� c莔 ng﹏ tr﹎ li襫 甶 , ngi th藅 mu鑞 gi髉 ta sao?")
			end
		elseif (UTask_trsub60 == 2) and (HaveItem(64) == 1) then
			Talk(2, "", "Th藅 ra th� Trng Qu� Ph� i v韎 ngi c騨g c� h秓 c秏, y l� n祅g tr� v� a cho ngi hng nang !", "Th藅 c竚 琻 ngi, n誹 nh� kh玭g c� ngi, ch髇g ta kh玭g bi誸 ph秈 i bao l﹗ m韎 c� th� hi觰 t﹎ � c馻 i phng. Ta c� m閠 thanh 畂筺 ki誱, m芻 d� kh玭g ng gi� bao nhi猽 ti襫, nh璶g l� nh� ch髇g ta t� truy襫 ch, s� a cho ngi l祄 t� l�.")
			DelItem(64)
			AddEventItem(127)
			SetTask(28, SetByte(GetTask(28),1,10))
			AddNote("сng hng nang cho kh骳 th� r蘮, l蕐 頲 畂筺 ki誱 'Y觰 Nh藅'.")
			Msg2Player("得到断剑“掩日'.")
		else
			if (HaveItem(127) == 1) then
				tiejiang_city("<dec><npc> t� ngi t竔 h頿 ta c飊g Trng Qu� Ph� nh﹏ duy猲, c� mu鑞 nh譶 m閠 ch髏 hay kh玭g ta y m� ch binh kh� ")
			else
				AddEventItem(127)
				Talk(1,"","M芻 d� ngi thi ﹏ kh玭g c莡 h錳 b竜, nh璶g l�, ngi gi髉 ta i mang, thanh ki誱 n莥 v� lu薾 nh� th� n祇 ngi mu鑞 thu h�.")
			end
		end
	elseif (UTask_tr > 60*256+20) then
		tiejiang_city("<dec><npc> t� ngi t竔 h頿 ta c飊g Trng Qu� Ph� nh﹏ duy猲, c� mu鑞 nh譶 m閠 ch髏 hay kh玭g ta y m� ch binh kh� ")
	else
		tiejiang_city()
	end
end;

function L60_sub_yes()
	Talk(1,"","V藋 qu� l祄 phi襫 ngi, c竔 n祔 c﹜ ng﹏ tr﹎ l� ta t� tay nh ch� ch, ngi gi髉 ta a cho n祅g, n誹 nh� n祅g ti誴 nh薾, li襫 t� r� trong l遪g c馻 n祅g c騨g c� ta.")
	AddEventItem(63)
	SetTask(28, SetByte(GetTask(28),1,1))
	AddNote("C飊g Kh骳 Thi誸 Tng  i tho筰, gi髉 h緉 c莔 ng﹏ tr﹎ cho Trng Qu� Ph� ")
	Msg2Player("Чt 頲 m閠 Ng﹏ Tr﹎.")
end;

function yes()
Sale(7);  			--弹出交易框
end;

