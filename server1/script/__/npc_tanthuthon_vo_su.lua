-- 新手村学轻功任务 武师模板
-- 任务要求: 等级(>=2), 金钱(>=100两)
-- By: Dan_Deng(2003-11-04)
IncludeLib("ITEM")
IncludeLib("SETTING")
Include("\\script\\lib\\basic.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\branch\\branch_head.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include( "\\script\\event\\eventhead.lua" )
Include("\\script\\event\\maincity\\event.lua")
Include("\\script\\event\\superplayeract2007\\event.lua")
Include("\\script\\event\\great_night\\event.lua")
Include("\\script\\event\\funv_jieri\\200803\\liguan_interface.lua")
Include("\\script\\event\\jiefang_jieri\\200804\\head.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function VoSu_ViecKhac()
	if bilAllowNvTanThu == 1 then
		if GetTask(5905) == 1 then
			if GetTask(1065) >= 5 then
				Talk(3, "", "V� l﹎ trung nguy猲 hi謓 產ng khao kh竧 b秓 v藅 Thi猲 Ho祅g Long Kh� v� мnh Qu鑓 Ho祅g Kim m� g﹜ ra i lo筺, ph﹏ chia ra 3 h� ph竔 l� ch輓h, trung, t�", 
					"tuy v藋 nhi襲 ngi kh玭g bi誸 頲 r籲g c� nh鱪g m鉵  b譶h d� nh璶g gi� tr� c馻 n� c� th� so s竛h v韎 Ho祅g Kim M玭 Ph竔 trong truy襫 thuy誸", 
					"v� thi誹 hi謕 h穣 t輈h c鵦 tham gia v� c竎 ho箃 ng trong v� l﹎  c� c� h閕 頲 vang danh thi猲 h�, nh nh i danh!")
				bilNvTanThu:NextTask()
			else
				return Talk(1,"","Th� gi韎 v� l﹎ trung nguy猲 r閚g l韓 bao la, v� thi誹 hi謕 h穣 t� t� m� kh竚 ph�!")
			end
		else
			return Talk(1,"","Th� gi韎 v� l﹎ trung nguy猲 r閚g l韓 bao la, v� thi誹 hi謕 h穣 t� t� m� kh竚 ph�!")
		end
	else
		return Talk(1,"","H玬 nay l穙 phu m謙, h玬 kh竎 h穣 n ta s� ti誴 i h藆 h躰h!")
	end
end

function VoSu_HocKhinhCong()

	local a = GetTask(5888) or 0
	
	if a == 0 then SetTask(5888, 1) end
	if a == 51 then SetTask(5888, 52) end
	if a == 102 then SetTask(5888, 103) end
	
	if a == 153 then
		SetTask(5888, 200)
		Talk(1,"","B﹜ gi� ta d箉 ngi khinh c玭g! S� d鬾g khinh c玭g c� th� nhanh ch鉵g tho竧 kh醝 n琲 nguy hi觤")
		if (HaveMagic(210) == -1) then
			AddMagic(210,1)
		end
		Msg2Player("Ch骳 m鮪g b筺 h鋍 頲 khinh c玭g!")
	end
	
	if (a < 51) then 
		Talk(1, "", "Mu鑞 h鋍 kinh c玭g, u ti猲 ph秈 甶 nh 50 c鋍 g�!") 
		return Msg2Player("V� s� mu鑞 b筺 nh 50 c鋍 g�!") 
	elseif (a < 102) then 
		Talk(1, "", "Ti誴 theo h穣 luy謓 ti誴 50 m閏 nh﹏!") 
		return Msg2Player("V� s� mu鑞 b筺 nh 50 m閏 nh﹏!") 
	elseif (a < 153) then 
		Talk(1, "", "Ti誴 theo h穣 luy謓 ti誴 50 bao c竧!") 
		return Msg2Player("V� s� mu鑞 b筺 nh 50 bao c竧!") 
	end
	
end

function learn()

	local a = {
		{
			M = "е t� mu鑞 b竔 s� h鋍 ngh�",
			H = {{GetTask, 0, {5888}, 200}} ,
			P = {
				c = {
					{VoSu_HocKhinhCong, {}},
				},
			},
		},
		{
			M = "Ta 產ng l祄 nhi謒 v� s� nh藀, n t譵 ngi nh� gi髉 ",
			P = {
				c = {
					{VoSu_ViecKhac, {}}
				},
			},
		},
		{
			M = "Ta 產ng c� nhi謒 v� b竛 th辴 ti",
			P = {
				c = {
					{education_collectmeat, {}}
				},
			},
		},
	}
	
	return bil.Say(a, "<npc>Ti觰 t� n祔, sao l筰 lang thang � y?")

	-- UTask_world32 = GetTask(32)
	-- Uworld1000 = GetTask(1000)
	-- Uworld1067 = nt_getTask(1067)
	
	-- local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	-- local nNpcIndex = GetLastDiagNpc();
	-- local szNpcName = GetNpcName(nNpcIndex)
	-- if NpcName2Replace then
		-- szNpcName = NpcName2Replace(szNpcName)
	-- end

	-- local tbDailog = DailogClass:new(szNpcName)
	
	-- G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	-- tbDailog.szTitleMsg = DescLink_WuShi.."<#>:D筼 n祔 kh玭g hi觰 sao l筰 c� nhi襲 ngi n t譵 ta th�! ng n鉯 l� ngi c騨g t譵 ta nh�!"
	-- tbDailog:AddOptEntry("Ta 產ng l祄 nhi謒 v� S� nh藀, n t譵 ngi xin gi髉 !", education_wushi)
	-- tbDailog:AddOptEntry("Ta 產ng c� nhi謒 v� b竛 th辴 ti", education_collectmeat)
	-- tbDailog:AddOptEntry("Ta mu鑞 h鋍 Khinh c玭g", education_fly)
	-- if ( Uworld1067 < 10 ) and ( Uworld1000 > 200 ) then
		-- tbDailog:AddOptEntry("Ta mu鑞 chuy觧 i k� n╪g Ng� h祅h", education_changewuxing)
	-- end
	-- tbDailog:AddOptEntry("Kh玭g c� g�! Ch� l� 甶 ngang qua th玦!", no)
	-- tbDailog:Show()
end

function education_fly()
	if (UTask_world32 == 0) then
		if (GetLevel() >= 2) then		-- 轻功任务开始
			Say("V� h鋍 'ngo礽 luy謓 g﹏ c鑤, trong luy謓 kh� c玭g'. H鋍 v� ph秈 t藀 c� trong l蒼 ngo礽! Xem ngi t� ch蕋 th玭g minh, c� mu鑞 h鋍 v礽 chi猽 ph遪g th﹏ kh玭g? H鋍 ph� ch� c� 100 lng", 2, "H鋍/yes", "Kh玭g h鋍/no")
		else
			Talk(1,"","H� luy謓 tam ph鬰, Йng luy謓 tam c鰑. V� ngh� kh玭g ph秈 m閠 ng祔 m� th祅h!")
		end
	elseif (UTask_world32 < 20) then			-- 为以前学会的或学了一半的人做转换
		Talk(1,"task_convert","Ta  thay i phng ph竝 luy謓 khinh c玭g. в ta xem ngi  h鋍 n giai 畂筺 n祇 r錳!")
	elseif (UTask_world32 < 70) then
		i = 70 - UTask_world32
		Talk(1,"","V� S�: Ngi luy謓 t藀 v蒼 ch璦 , ti誴 theo h穣 甶 nh "..i.."c鋍 g�.")
	elseif (UTask_world32 == 70) then
		Talk(1,"","Ngo筰 l鵦 c祅g m筺h th� kh� n╪g chi課 u c馻 ngi c祅g cao. Ti誴 theo ngi h穣 甶 nh bao c竧. Ch� � t鑓  xu蕋 chi猽!")
		SetTask(32,80)
	elseif (UTask_world32 < 130) then
		i = 130 - UTask_world32
		Talk(1,"","V� S�: Ngi luy謓 t藀 v蒼 ch璦 , ti誴 theo h穣 甶 nh "..i.."bao c竧.")
	elseif (UTask_world32 == 130) then
		Talk(1,"","Luy謓 quy襫 kh玭g luy謓 c玭g, n gi� c騨g b籲g kh玭g. N閕 c玭g sung m穘 th� c� th� h鋍 v� c玭g cao th﹎! B﹜ gi� h穣 甶 nh M閏 nh﹏")
		SetTask(32,140)
	elseif (UTask_world32 < 190) then
		i = 190 - UTask_world32
		Talk(1,"","V� S�: Ngi luy謓 t藀 v蒼 ch璦 , ti誴 theo h穣 甶 nh "..i.."M閏 Nh﹏.")
	elseif (UTask_world32 == 190) then		-- 轻功任务完成
		Talk(1,"","B﹜ gi� ta d箉 ngi khinh c玭g! S� d鬾g khinh c玭g c� th� nhanh ch鉵g tho竧 kh醝 n琲 nguy hi觤")
		if (HaveMagic(210) == -1) then		-- 必须没有技能的才给技能
			AddMagic(210,1)
		end
		SetTask(32,200)
		Msg2Player("Ch骳 m鮪g b筺 h鋍 頲 khinh c玭g!")
	elseif (UTask_world32 >= 200) then
		Talk(1,"","Ta  kh玭g c遪 g�  d箉 ngi n鱝 r錳! N猲 nh� si猲g n╪g kh� luy謓! Sau n祔 c� th� t飝 � n y luy謓 t藀!")
	else
		Talk(1,"","H� luy謓 tam ph鬰, Йng luy謓 tam c鰑. V� ngh� kh玭g ph秈 m閠 ng祔 m� th祅h!")
	end
end;

function yes()
	if (GetCash() >= 100) then
		Pay(100)
		Talk(1,"","Luy謓 v� ph秈 b総 u t� c╪ b秐! Ngi h穣 甶 nh c鋍 g� 甶!")
		SetTask(32,20)
	else
		Talk(1,"","T譵  ng﹏ lng r錳 n h鋍 v�!")
	end
end;


function task_convert()
	UTask_world32 = GetTask(32)
	if (UTask_world32 == 2) then
		SetTask(32,20)
		Talk(1,"","R蕋 t鑤! H穣 甶 nh 50 c鋍 g�  luy謓 t藀 c╪ b秐!")
	elseif (UTask_world32 == 4) then
		SetTask(32,80)
		Talk(1,"","R蕋 t鑤! H穣 甶 nh 50 bao c竧  luy謓 t藀 c鴑g c竝!")
	elseif (UTask_world32 == 6) then
		SetTask(32,140)
		Talk(1,"","R蕋 t鑤! H穣 甶 nh 50 M閏 nh﹏  luy謓 t藀 N閕 c玭g!")
	elseif (UTask_world32 == 10) then
		SetTask(32,200)
		Talk(1,"","Ngi  h鋍 頲 khinh c玭g r錳,v藋 ta c騨g kh玭g c遪 g� d箉 ngi n鱝!")
	else
		SetTask(32,0)
		Talk(1,"","Phng ph竝 h鋍 c馻 ngi trc y dng nh� kh玭g ng! Ngi l筰 b総 u nh l筰 c閠 g� nhi襲 l莕 n鱝 甶!")
	end
end

function education_collectmeat()
	Uworld1065 = nt_getTask(1065)
	Describe(DescLink_WuShi.."<#>: Ngi hi謓 產ng c� "..Uworld1065.."mi課g th辴 ti. Ta mu鑞 ngi ra ngo礽 r鮪g t譵 th猰 m閠 輙 n鱝. Mang v� y ta s� t苙g ngi m閠 s� 甶觤 kinh nghi謒, c� ng � kh玭g? N誹 ng � h穣 蕁 ph輒 <color=red>F12<color>  xem hng d蒼 chi ti誸 v� nhi謒 v�!",
	3,"Л琻g nhi猲! D� sao ta c騨g mu鑞 t譵 ch髏 輙 kinh nghi謒/education_givemeat",
	"Ta n  giao th辴/education_havemeat",
	"в ta suy ngh� l筰!/no")
end

function education_givemeat()
	local Uworld1066 = nt_getTask(1066)
	
	if Uworld1066 > 0 then
		return Say("Ngi  nh薾 nhi謒 v� t譵 th辴 ti r錳! Kh玭g c莕 l祄 n鱝! H穣 甶 t譵 "..Uworld1066.." mi課g th辴 ti 甶!", 1, "K誸 th骳 i tho筰/no")
	else
		Uworld1066 = random(5,20)
		nt_setTask(1066,Uworld1066)
		return Say("Hi謓 gi� ta c莕"..Uworld1066.." mi課g th辴 ti, h穣 甶 t譵 gi髉 ta!.", 1, "T筰 h� bi誸 r錳/no")
	end
end

function education_havemeat()
	local Uworld1068 = nt_getTask(1068) --猪肉附送声望的记时器
	local Uworld1069 = nt_getTask(1069) --猪肉附送声望的记数器
	local Uworld1065 = nt_getTask(1065)
	local Uworld1066 = nt_getTask(1066)
	if ( Uworld1066 ~= 0 ) then
		if ( Uworld1065 >= Uworld1066 ) then
			if ( GetGameTime() >= Uworld1068  ) and ( Uworld1069 >= 0 ) and  ( Uworld1069 < 3 ) and  ( Uworld1066 >= 5 ) then
				AddRepute(1)
				Msg2Player("B筺 nh薾 頲 1 甶觤 danh v鋘g.")
				Uworld1069 = Uworld1069 + 1
				if ( Uworld1069 == 3 ) then
					nt_setTask(1069,0)
					Uworld1068 = GetGameTime() + 43200
					nt_setTask(1068,Uworld1068)
				else
					nt_setTask(1069,Uworld1069)
					Uworld1068 = GetGameTime()
					nt_setTask(1068,Uworld1068)
				end
			end
			AddOwnExp(Uworld1066*10)
			Earn(Uworld1066*20)
			Uworld1065 = Uworld1065 - Uworld1066
			nt_setTask(1065,Uworld1065)
			nt_setTask(1066,0)
			Talk(1,"","Th藅 xu蕋 s綾! H穣 nh薾 l蕐 ti襫 v� 甶觤 kinh nghi謒! ")
		else 
			Describe(DescLink_WuShi.."<#>:Hi謓 gi� ta c莕"..Uworld1066.."mi課g th辴 ti. Ngi hi謓 產ng c� "..Uworld1065.."mi課g, c� g緉g th猰 甶!",1,"K誸 th骳 i tho筰/no")
		end
	else 
		Talk(1,"","V� S�: Ch璦 l祄 xong nhi謒 v� m� d竚 n g箃 ta �? Ngi u, ti詎 kh竎h!")
	end
end

function education_changewuxing()
	Uworld1067 = nt_getTask(1067)
	local Uworld445 = HaveMagic(445)
	local Uworld446 = HaveMagic(446)
	local Uworld447 = HaveMagic(447)
	local Uworld448 = HaveMagic(448)
	local Uworld449 = HaveMagic(449)
	if ( Uworld445 ~= -1 ) or ( Uworld446 ~= -1 ) or ( Uworld447 ~= -1 ) or ( Uworld448 ~= -1 ) or ( Uworld449 ~= -1 ) then
		if ( Uworld445 ~= -1 ) then
			DelMagic(445)
			AddMagic(534,1)
			AddMagicPoint(Uworld445)
		elseif ( Uworld446 ~= -1 ) then
			DelMagic(446)
			AddMagic(535,1)
			AddMagicPoint(Uworld446)
		elseif ( Uworld447 ~= -1 ) then
			DelMagic(447)
			AddMagic(536,1)
			AddMagicPoint(Uworld447)
		elseif ( Uworld448 ~= -1 ) then
			DelMagic(448)
			AddMagic(537,1)
			AddMagicPoint(Uworld448)
		elseif ( Uworld449 ~= -1 ) then
			DelMagic(449)
			AddMagic(538,1)
			AddMagicPoint(Uworld449)
		end
		Talk(1,"","V� S�: Ha ha! Ta ch� th� ngi th玦! B﹜ gi� ta d箉 ngi ch﹏ c玭g phu! Sau n祔 n猲 lui t韎 thng xuy猲, ta s� truy襫 cho ngi nh鱪g th� c� 輈h!") 
		nt_setTask(1067,10)
	else 
		Talk(1,"","V� S�: Ngay c�  k� n╪g Ng� h祅h c�  c騨g kh玭g c�, c遪 n nh薾 c竔 m韎? N祇, ng錳 xu鑞g ta m o m閠 ch髏!")
	end
end

function no()
	Talk(1,"","Kh玭g c� danh s� ch� 甶觤 th� c� h鋍 c� i c騨g kh玭g n 頲 c秐h gi韎 v� h鋍!")
end;
