-- 少林 路人NPC 知客僧 入门任务
-- by：Dan_Deng(2003-08-01)

Include("\\script\\global\\repute_head.lua")

function main()
	UTask_sl = GetTask(7)
	Uworld38 = GetByte(GetTask(38),2)
	if (Uworld38 == 20) and (HaveItem(219) == 1) then		-- 任务完成(证明书信)
		Talk(1,"enroll_prise","Th� ra l� gi蕐 t� t飝 th﹏ c馻 huynh 蕐, th玦 c騨g 頲.")
	elseif (Uworld38 == 0) and (GetLevel() >=10) and (GetFaction() ~= "shaolin") then		--入门任务
		Say("е t� b鎛 m玭 c莕 ph秈 c�  b鑞 甶襲 ki謓, ph﹏ bi謙 l�: Anh d騨g gan d�, h筼 nhi猲 ch竛h kh�, ki猲 nh蒼 b蕋 khu蕋 v� v� t� v� ng�. Ngi mu鑞 l祄 k� danh  t� c馻 b鎛 ph竔 c莕 ph秈 c� nh鱪g 甶襲 ki謓 n祔, ngi ti誴 nh薾 kh秓 nghi謒 kh玭g?",2,"Tu﹏ l謓h!/enroll_get_yes","Kh玭g, ta ch� n tham quan. /enroll_get_no")
	elseif (GetFaction() == "shaolin") then
		Talk(1,"","S�  c莕 ph秈 ch� � b秓 v� s� trang nghi猰 c馻 b鎛 t�, kh玭g 頲 ch箉 nh秠 lung tung, la l鑙 om s適.")
	else							-- 常规对话
		if (GetSex() == 0) then
			Talk(1,"","Th� ch� ng n猲 mang theo binh kh� v祇 t�.")
		else
			Talk(1,"","N� kh竎h kh玭g 頲 v祇 trong t�.")
		end
	end
end;

function enroll_get_yes()
	Talk(1, "", "Л頲! Ngi h穣 h� s琻 du ngo筺, h閕  b鑞 甶襲 ki謓 xong r錳 m韎 tr� l筰 y ta s� n鉯 ti誴.")
	Uworld38 = SetByte(GetTask(38),2,10)
	SetTask(38,Uworld38)
	AddNote("Ch鴑g minh cho Tri Kh竎h T╪g c� c竎 ph萴 ch蕋: X輈h m trung t﹎, h筼 nhi猲 ch輓h kh�, ki猲 nh蒼 b蕋 b箃 v� v� t� v� ng�. ")
	Msg2Player("Ch鴑g minh cho Tri Kh竎h T╪g c� c竎 ph萴 ch蕋: X輈h m trung t﹎, h筼 nhi猲 ch輓h kh�, ki猲 nh蒼 b蕋 b箃 v� v� t� v� ng�. ")
end;

function enroll_get_no()
end;

function enroll_prise()
	Talk(1,"","Xem ra ngi  h閕  b鑞 ph萴 ch蕋 ! Ch骳 m鮪g ngi, t� n祔 v� sau ngi  tr� th祅h  t� k� danh c馻 b鎛 ph竔 r錳!")
	DelItem(219)
	i = ReturnRepute(12,29,2)		-- 缺省声望，最大无损耗等级，每级递减
	AddRepute(i)
	Uworld38 = SetByte(GetTask(38),2,127)
	SetTask(38,Uworld38)
	Msg2Player("Ho祅 th祅h nhi謒 v� k� danh  t� c馻 Thi誹 L﹎ ph竔, tr� th祅h  t� Thi誹 L﹎, danh v鋘g t╪g l猲. "..i.."甶觤.")
	AddNote("Ho祅 th祅h nhi謒 v� k� danh  t� c馻 Thi誹 L﹎ ph竔, tr� th祅h  t� Thi誹 L﹎. ")
end;
