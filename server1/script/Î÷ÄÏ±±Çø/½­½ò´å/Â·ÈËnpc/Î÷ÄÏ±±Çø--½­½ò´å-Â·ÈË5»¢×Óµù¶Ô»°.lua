--西南北区 江津村 路人5虎子爹对话
--江津村新手任务：虎子拜师
--suyu
-- Update: Dan_Deng(2003-08-11)
-- Update: Dan_Deng(2003-09-09) 修改装备属性生成方式

Include("\\script\\global\\itemhead.lua")

function main(sel)
--	UTask_world20 = GetTask(48);
	UTask_world44 = GetTask(44)
	if (UTask_world44 == 0) then		-- 任务启动（1级即可接任务)
		Say("V� s� b猲 ngo礽 th玭 r蕋 c� danh ti課g. H� T� nh� ta t� nh�  r蕋 m� v� h鋍. N誹 c� th� b竔 v� v� s�  l祄 th莥 th� th藅 t鑤 qu�! Nh� ta l� gia nh r蕋 b譶h thng, kh玭g bi誸 h鋍 v� c� ph秈 t鑞 m蕋 bao nhi猽 ti襫, ngi c� th� 甶 h醝 v� v� s�  d飉 ta kh玭g?", 2, " h醝 gi髉/yes", "Kh玭g gi髉/no")
	elseif(UTask_world44 == 10) then
		Talk(1,"","V� V� s�  � ng玦 nh� tranh � m� Йng c馻 th玭.")
	elseif(UTask_world44 == 20) then
		Talk(1,"","Sao? g 蕐  ng � r錳 �? 竔 da! Th藅 t鑤 qu�! C竔 m� n祔 l� nh� ta l祄 ra! Tuy kh玭g ng gi� bao nhi猽 nh璶g b祔 t� l遪g bi誸 琲!!")
		SetTask(44, 100)
		AddRepute(5)
		AddNote("Th玭g b竜 tin v� V� s�  ng � nh薾 H� T� l祄 h鋍 tr� cho cha H� T� nghe. Nhi謒 v� ho祅 th祅h.")
		Msg2Player("Th玭g b竜 tin v� V� s�  ng � nh薾 H� T� l祄 h鋍 tr� cho cha H� T� nghe. Nhi謒 v� ho祅 th祅h.")
		p1,p2,p3,p4,p5,p6 = RndItemProp(6,10)
		if(GetSex() == 0) then
			AddItem(0,7,6,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)
			Msg2Player("Nh薾 頲 m閠 chi誧 m�")
		else
			AddItem(0,7,8,1,random(0,4),GetLucky(), p1,p2,p3,p4,p5,p6)
			Msg2Player("Nh薾 頲 m閠 chi誧 m�")
		end
		Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 5 甶觤")
	else			-- 非任务对话
		Talk(1,"","V� ╪ n鉯 nh� ta ai ai c騨g gi醝, r蕋 th輈h l祄 mai m鑙 cho ngi ta!")
	end
end;

function yes()
	Talk(1,"","V� V� S� 產ng � ng玦 nh� tranh � m� Йng c馻 th玭.")
	SetTask(44, 10)
	AddNote("Ti誴 nh薾 nhi謒 v�:  xin cho H� T� h鋍 v�.")
	Msg2Player("Ti誴 nh薾 nhi謒 v�:  xin cho H� T� h鋍 v�.")
end;

function no()
end;
