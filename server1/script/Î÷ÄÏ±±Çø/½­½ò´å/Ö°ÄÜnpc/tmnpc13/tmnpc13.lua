--description: 唐门江津村唐元 50级任务
--author: yuanlan	
--date: 2003/3/12
-- Update: Dan_Deng(2003-08-13)

Include("\\script\\global\\repute_head.lua")

function main()
	UTask_tm = GetTask(2);
	Uworld123 = GetTask(123)
	Uworld37 = GetByte(GetTask(37),1)
	if ((GetLevel() >= 90) and (Uworld123 < 10) and (Uworld37 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~= "tangmen")) or
		(GetLevel() >= 90 and GetCamp() == 4 and GetTask(5896) == 0) then		-- 任务启动条件：90级、是唐门记名弟子、任务未做过、声望等级5级
		Talk(2,"U123_get","Ch糿g hay c竎 h� n g苝 ta c� chuy謓 g�? kh玭g ph秈 l� mu鑞 n ti誴 nh薾 nhi謒 v� c蕄 90 c馻 Л阯g m玭 sao!","ng r錳 琻g nguy猲 i huynh!")
	elseif (Uworld123 >= 10) and (Uworld123 < 255) then			-- 任务进行中
		Talk(1,"","Ch糿g hay c竎 h� n y l� c� vi謈 g�?")
	elseif (UTask_tm == 50*256+40) then  				--50级任务
		Talk(7, "", "GTT65找我有什么急事吗?", "五师兄，昨晚你有去过暗器房吗?", "有啊，我是去做清洁的，打扫完就离开了!", "你有见到三师兄吗?", "说来奇怪，我昨晚在暗器房的后面看见一个人很像三师兄，我叫了他一声，哪知他急匆匆就走了，我还以为我认错了人呢!", "你可知三师兄现在何处?", "我早上出门的时候，看见他往 <color=Red>青城山<color>方向去了，可能去了<color=Red>响水洞<color>, 听说他在那里有些朋友.")
		SetTask(2, 50*256+60)
		Msg2Player(" GTT66在江津村找到唐元，知道唐禾去了青城山的响水洞")
		AddNote("在江津村找到唐元，知道唐禾去了青城山的响水洞")
	elseif (UTask_tm == 50*256+60) then  
		Talk(1,"","GTT67三师兄可能去了<color=Red>响水洞<color>, 听说他在那里有些朋友.")
	else
		Talk(1,"","Cha m� ta m蕋 s韒, nh� ngi c藆 nu玦 n蕁g n猲 ngi, c藆 l� ngi th﹏ thu閏 nh蕋 c馻 ta.")
	end
end;

function U123_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- 白名未学野球拳的，不允许接任务
		Talk(1,"","hi謓 t筰 ta kh玭g th� ti課 h祅h nhi謒 v� n祔!")
	else
		Say("Л阯g b蕋 nhi詍 ta nghi ng� c� nh鱪g bi觰 hi謓 b蕋 thng, hi謓 t筰 nh� ngi h穣 n g苝 ngi xem sao!?",2,"Л頲 th玦, ta ph秈 甶 1 chuy課 xem sao/U123_get_yes","th玦, ta kh玭g c� th阨 gian  l祄 nhi謒 v� n祔/no")
	end
end

function U123_get_yes()
	SetTask(123,10)
	SetTask(5896,1)
	Msg2Player("V� 阯g m玭 ph竔, n t� t� ph遪g g苝 Л阯g b蕋 nhi詍")
	AddNote("V� 阯g m玭 ph竔, n t� t� ph遪g g苝 Л阯g b蕋 nhi詍")
end

function no()
end
