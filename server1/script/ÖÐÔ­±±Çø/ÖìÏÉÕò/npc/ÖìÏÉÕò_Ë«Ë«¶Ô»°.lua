--中原北区 朱仙镇 路人双双的对话
--朱仙镇新手任务: 找手环
--by Dan_Deng(2003-07-21)
-- Update: Dan_Deng(2003-08-11)
-- Update: Dan_Deng(2003-09-09) 修改装备属性生成方式

Include("\\script\\global\\itemhead.lua")

function main(sel)
	UTask_world40 = GetTask(68)
	if ((UTask_world40 == 0) and (GetLevel() >= 6)) then		--任务启动
		Say("Ti觰 n� l祄 m蕋 chi誧 nh蒼 m�  l筰 r錳, t譵 ho礽 kh玭g th蕐,  l� chi誧 nh蒼 ti觰 n� th輈h nh蕋.", 2, "Ta s� gi髉 c� t譵 l筰/yes", "Ta 產ng b薾 kh玭g th� gi髉 c�/no")
	elseif ((UTask_world40 == 3) and (HaveItem(191) == 1)) then		-- 完成任务
		DelItem(191)
		Talk(2,"finish_select","Зy c� ph秈 l� nh蒼 c馻 c� nng kh玭g?","ng r錳, th藅 c竚 琻, xin h穣 nh薾 ch髏 th祅h � c馻 ti觰 n�.")
	elseif (UTask_world40 <= 3) then		-- 任务中的普通对话
		Talk(1,"","M� l鏸 'CTT001' li猲 h� v韎 admin  頲 fix l鏸")
	else
		i = random(0,2)
		if (i==0) then
			Talk(1,"","N╩ ngo竔 m� ti觰 n� l﹎ b謓h qua i, ch�  l筰 chi誧 nh蒼 n祔 th玦.")
		elseif (i==1) then
			Talk(1,"","Зy l� chi誧 nh蒼 do m� ti觰 n�  l筰, ti觰 n� r蕋 th輈h n�.")
		else
			Talk(1,"","Hu hu hu! Ti觰 n� nh� m� qu�. ")
		end
	end
end;

function yes()
	SetTask(68,1)
	Msg2Player("Nh薾 nhi謒 v�: Gi髉 Song Song t譵 l筰 chi誧 nh蒼. ")
	AddNote("Nh薾 nhi謒 v�: Gi髉 Song Song t譵 l筰 chi誧 nh蒼. ")
end;

function no()
	Talk(1,"",", kh玭g bi誸 chi誧 nh蒼  r琲 � u?")
end;

function finish_select()
	Say("Зy l� 200 lng, xin h穣 nh薾 l蕐", 2, "Nh薾./finish_a","T� ch鑙/finish_b")
end;

function finish_a()
	Talk(1,"","Ngi tr猲 giang h� gi髉  nhau l� chuy謓 thng t譶h, c� nng kh玭g c莕 ph秈 kh竎h kh�. ")
	Earn(200)
	SetTask(68,4)
	AddRepute(7)
	Msg2Player("Ho祅 th祅h nhi謒 vu: Gi髉 Song Song t譵 l筰 chi誧 nh蒼. Nh薾 頲 200 lng b筩. ")
	AddNote("Ho祅 th祅h nhi謒 vu: Gi髉 Song Song t譵 l筰 chi誧 nh蒼. Nh薾 頲 200 lng b筩.")
	Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 7 甶觤")
end;

function finish_b()
	Talk(2,"","Ngi tr猲 giang h� gi髉  nhau l� chuy謓 thng t譶h, c� nng kh玭g c莕 ph秈 kh竎h kh�.","C竎 h� th藅 l� m閠 ngi hi謕 ngh�, ti觰 n� c� m閠 chi誧 th総 l璶g da s鉯, xin t苙g c竎 h�  ph遪g th﹏.")
	SetTask(68,5)
	AddRepute(9)
	p1,p2,p3,p4,p5,p6 = RndItemProp(6,15)
	AddItem(0,6,0,2,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)
	Msg2Player("Ho祅 th祅h nhi謒 vu: Gi髉 Song Song t譵 l筰 chi誧 nh蒼. Nh薾 頲 m閠 chi誧 th総 l璶g da s鉯. ")
	AddNote("Ho祅 th祅h nhi謒 vu: Gi髉 Song Song t譵 l筰 chi誧 nh蒼. Nh薾 頲 m閠 chi誧 th総 l璶g da s鉯.")
	Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 9 甶觤")
end;
