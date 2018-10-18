----description: 孝手村_牛牛
--author: wangzg	
--date: 2003/7/18
--Modify:2003/7/21 wangzg
--update 2003/7/22 yuanlan
-- Update: Dan_Deng(2003-08-07)
-- 等待检测并删除武器的函数，现在先只允许给钱

function main(sel)
	UTask_world37=GetTask(65)
	if (UTask_world37==2) then		--已经接到任务
		Say("Ta mu鑞 l� i hi謕, 甶 kh緋 n琲 h祅h hi謕 trng ngh躠, gi髉  ngi ngh蘯 kh�",2,"Khuy猲 can/reason", "?ng h�/help")
	elseif (UTask_world37==9) then		--选择劝说
		Say("L祄 i hi謕 th藅 kh�, luy謓 v� c玭g l﹗ qu�.",0)
	elseif (UTask_world37==10) then		--选择支持
		Say("L祄 i hi謕 th藅 kh�, luy謓 v� c玭g l﹗ qu�.",0)	
	else
		Say("Nh鱪g hi謕 kh竎h trong s竎h th藅 l� oai phong, n誹 頲 gi鑞g nh� h� th� hay qu�!",0)
	end
end;

function reason()		--选择劝说牛牛
	Talk(3,"prise","Ngi x蕌 r蕋 hung d�,  c遪 nh� nh� th�, v� c玭g c騨g luy謓 kh玭g t鑤 th� l祄 sao 甶 h祅h hi謕 trng ngh躠?","Ngi n鉯 c騨g ng! ьi ta l韓 l猲, luy謓 th猰 v� c玭g, s� 甶 h祅h hi謕 trng ngh躠!","ng r錳! Luy謓 t鑤 v� c玭g c� b秐, sau  h穣 甶 nh ngi x蕌.")
end;

function prise()
	Talk(1,"","V藋 ta v� nh� y! C秏 琻 i hi謕! Зy c� ch髏 thu鑓 tr� thng, xin nh薾 cho!")
	AddItem(1,0,0,1,0,0)
	AddItem(1,0,0,1,0,0)
	AddItem(1,0,0,1,0,0)
	SetTask(65,9)
	AddRepute(6)		-- 声望加6点
	AddNote("T譵 頲 Ng璾 Ng璾, khuy猲 n� v� nh�, nhi謒 v� ho祅 th祅h. ")
	Msg2Player("T譵 頲 Ng璾 Ng璾, khuy猲 n� v� nh�, nhi謒 v� ho祅 th祅h. ")
	Msg2Player("Nh薾 頲 3 Kim S竛g Dc")
	Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 6 甶觤.")
end;

function help()			--选择帮助牛牛
--	Say("蚅MT33婕遥盒⌒∧昙停雇τ兄酒�",3,"送一把武器/arm","送一点银子/money","我再想想/wait")
	Say("Tu鎖 c遪 nh� nh璶g  c� ch� l韓!",2,"T苙g m閠 ch髏 b筩/money","в ta suy ngh� l筰 xem/wait")		--等能够检测武器再用上面这句，现在先只给钱
end

function arm()
	if x==0 then	--如果没有武器
		Say("LMT35我现在没有武器?",3,"送一把武器/arm","送一点银子/money","我再想想/wait")
	else 
		--给武器
		Talk(1,"","LMT36谢谢你，你真好!")
		AddOwnExp(100)
		SetTask(65,10)
		AddNote("LMT37找到牛牛，给他一把武器，支持他的大侠梦")
	end
end

function money()
	if (GetCash() < 100) then
--		Say("蚅MT38婕遥喊パ剑疑砩厦淮裁辞�",3,"送一把武器/arm","送一点银子/money","我再想想/wait")
		Talk(1,"","LMT39我身上没带钱，等我回来")		--等能够检测武器再用上面这句，现在先只给钱
	else
		Pay(100)
		Talk(1,"","C秏 琻 i hi謕! Ngi th藅 l� t鑤")
		AddOwnExp(100)
		SetTask(65,11)
		AddRepute(4)
		AddNote("T譵 頲 Ng璾 Ng璾, cho n� 1 輙 b筩, 駈g h� m� uwowngcs l祄 i hi謕 c馻 n�. Ho祅 th祅h nhi謒 v�.")
		Msg2Player("T譵 頲 Ng璾 Ng璾, cho n� 1 輙 b筩, 駈g h� m� uwowngcs l祄 i hi謕 c馻 n�. Ho祅 th祅h nhi謒 v�.")
		Msg2Player("Kinh nghi謒 giang h� c馻 b筺  t╪g l猲! ")
		Msg2Player("Danh v鋘g c馻 b筺 t╪g th猰 4 甶觤. ")
	end
end

function wait()
end
