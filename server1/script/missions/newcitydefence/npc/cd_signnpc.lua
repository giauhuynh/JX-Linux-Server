----------------------------------------------------------------
--FileName:	cd_signnpc.lua
--Creater:	firefox
--Date:		2005-
--Comment:	周末活动：卫国战争之烽火连城
--			功能：报名点报名官
-----------------------------------------------------------------
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\missions\\newcitydefence\\head.lua")
CD_SIGNNPCNAME = "Tng qu﹏ th� th祅h"
function main()
	local signmap = SubWorldIdx2ID( SubWorld )
	if ( signmap == tbDEFENCE_SIGNMAP[1] ) then
		camp = 1
		cityname = "Phe T鑞g"
		defencemap = tbDEFENCE_MAPID[1]
		defencesidx = SubWorldID2Idx( defencemap )
	elseif ( signmap == tbDEFENCE_SIGNMAP[2] ) then
		camp = 2
		cityname = "Phe Kim"
		defencemap = tbDEFENCE_MAPID[2]
		defencesidx = SubWorldID2Idx( defencemap )
	else
		print("citydefence signmap error!!! mapid = "..signmap)
		return
	end
	local guanyuanname = cityname.."Tng qu﹏ th� th祅h"
	
	local level = GetLevel()
	if ( level < CD_LEVEL_LIMIT ) then
		Talk(1, "", CD_SIGNNPCNAME..": Ti觰 qu� t� u n? Kh玭g mu鑞 s鑞g �? Ъng c蕄 c遪 ch璦 !"..CD_LEVEL_LIMIT.."c蕄, ch箉 n ti襫 tuy課, ngi tng y l� u? ng c� m� 甶 lung tung, n誹 kh玭g ngi c� ch誸 c騨g kh玭g bi誸 t筰 sao!")
		Msg2Plalyer("Ъng c蕄 l韓 h琻"..CD_LEVEL_LIMIT.."c蕄 m韎 c� th� tham gia chi課 tranh v� qu鑓.")
		return
	end
	local oldSubWorld = SubWorld
	
	if ( defencesidx < 0 ) then
		Say(CD_SIGNNPCNAME..": Chi課 trng ph輆 trc x秠 ra v蕁 , t筸 th阨 kh玭g th� v祇.", 0)
		print("citydefence defencemap error!!!! defencemap = "..defencemap)
		return
	end

	SubWorld = defencesidx;
	local state = GetMissionV(MS_STATE)
	if ( state ~= 1 and state ~= 2 ) then
		Say(CD_SIGNNPCNAME..": Chi課 trng th� th祅h v蒼 ch璦 b総 u th阨 gian 8h30 - 12h30 - 16h30 - 18h30 - 22h30 v� 2h30 s竛g. !", 0)
		Msg2Player("V� qu鑓 Phong H醓 li猲 th祅h"..cityname.."Ho箃 ng th� th祅h v蒼 ch璦 b総 u.")
		SubWorld = oldSubWorld
		return
	end
	
	local randkey = GetMissionV( MS_RANDKEY );
	local memcount = GetMSPlayerCount(MISSIONID, 0)
	local nday = tonumber(date("%m%d"));
	local time = GetMissionV(MS_SMALL_TIME)
	SubWorld = oldSubWorld
	
	if (time >= CALLBOSS_ZHUSHUAI) then
		Say(CD_SIGNNPCNAME..": qu﹏ vi謓 tr� c馻 ta  b� ch qu﹏ chia c総, kh玤 th� n y 頲!", 2, "觤 t藀 k誸/OnCancel", "Lu薾 c玭g ban thng/cd_awardforpayout")
		return
	end
	
	if ( memcount >= MAX_MEMBERCOUNT ) then
		Talk(2, "", CD_SIGNNPCNAME..": Ngi l� ai?", CD_SIGNNPCNAME..": �! Ngi mu鑞 gi髉 ta ch鑞g l筰 k� ch? Ngi qu� l� y猽 nc! Binh l鵦 qu﹏ ta r蕋 y , ngi c� l遪g l� t鑤, nh璶g xin ngi h穣 v� 甶!")
		Msg2Player("S� ngi tham gia chi課 tranh v� qu鑓  y<color=yellow>"..MAX_MEMBERCOUNT.."<color>ngi, kh玭g th� v祇 chi課 trng.")
		return
	end
	
--	if ( GetTask( TASKID_FIRE_DAY ) == nday and GetTask( TASKID_FIRE_KEY ) ~= randkey ) then	--不允许报名
--		Say(CD_SIGNNPCNAME.."：卫国战争之烽火连城活动一天只能参加一场，你还是好好养精蓄锐，下次再来吧。", 0)
--	elseif ( nday ~= GetTask( TASKID_FIRE_DAY ) ) then	--允许报名
	if ( GetTask( TASKID_FIRE_KEY ) ~= randkey or  GetTask( TASKID_FIRE_DAY ) ~= nday) then	--允许报名
		Say(CD_SIGNNPCNAME..": L� Nh�! T猲 ti觰 t� nh� ngi mau 甶 k猽 T輓 S� l筰 y, qu﹏ ch l筰 nh n r錳! �? Ngi l� ai? B﹜ gi� l� l骳 n祇? C� ngi 產ng t蕁 c玭g th祅h c馻 ta, ngi c遪 k衞 d礽 qu﹏ c� s� b� ch衜 u bi誸 kh玭g?", 3, "Tng qu﹏! Ta n gi髉 th� th祅h!/#want2joincd1("..defencemap..")", "Nh薾 thu鑓 lag trc khi tham chi課/thuocphonghoa", "Th玦 ta kh玭g mu鑞 ch誸 oan u鎛g/laughtoleave")
		cd_clear_lastsumexp();		--清除上次计算的累计经验值
	else
		Say(CD_SIGNNPCNAME..": �? Ch糿g ph秈 ngi  v祇 chi課 trng sao? Hay l� ta bi hoa m総? enter> Th玦 頲 r錳! Ngi ch萿n b� v祇 trong  甶!", 3, "Ta mu鑞 gia nh藀/#sure2joincd("..defencemap..")", "Nh薾 thu鑓 lag trc khi tham chi課/thuocphonghoa", "Ta ch� gh� qua xem/OnCancel")
	end
end

function sure2joincd(defencemap)
Msg2SubWorld("<color=green>Чi hi謕 "..GetName().."<color=cyan> t筰 h�  v祇 chi課 trng th� th祅h t譵 m秐h c� s� 1 anh em v祇 c飊g ph� t筰 h� m閠 tay n祇 <pic=1>")
	local oldSubWorld = SubWorld;
	local signmap = SubWorldIdx2ID( SubWorld )
	local defencesidx = SubWorldID2Idx( defencemap )
	if ( defencesidx < 0 ) then
		Say(CD_SIGNNPCNAME..": Chi課 trng ph輆 trc x秠 ra v蕁 , t筸 th阨 kh玭g th� v祇.", 0)
		print("citydefence defencemap error!!!! defencemap = "..defencemap)
		return
	end
	SubWorld = defencesidx
	local state = GetMissionV( MS_STATE )
	local time = GetMissionV(MS_SMALL_TIME)
	local memcount = GetMSPlayerCount(MISSIONID, 0)
	if ( state ~= 1 and state ~= 2 ) then
		SubWorld = oldSubWorld
		return
	end
	if (time >= CALLBOSS_ZHUSHUAI) then
		SubWorld = oldSubWorld
		return
	end
	if (memcount >= MAX_MEMBERCOUNT) then
		SubWorld = oldSubWorld
		return
	end
	local randkey = GetMissionV( MS_RANDKEY )
	local nday = tonumber(date("%m%d"))
	if ( GetTask( TASKID_FIRE_KEY ) ~= randkey or  GetTask( TASKID_FIRE_DAY ) ~= nday) then
		if (GetCash() >= 0) then
			SetTask( TASKID_FIRE_DAY,  nday)
			SetTask( TASKID_FIRE_KEY,  randkey)
		else
			Say(CD_SIGNNPCNAME..": Sao th�, ngi kh玭g mang theo"..floor(FIRE_JOINUP_FEE / 1000).." v筺 lng, ta kh玭g th� cho ngi v祇. H穣 chu萵 b� ti襫 r錳 h穣 n t譵 ta!", 0);
			return -1;
		end;
	end;
	cd_setsign_levelexp();
	JoinMission(MISSIONID, GetMissionV( MS_CITYCAMP ))
	SubWorld = oldSubWorld
end

function want2joincd1(defencemap)
	Say(CD_SIGNNPCNAME..": �! Ngi mu鑞 gi髉 ch髇g ta ch鑞g l筰 k� ch? 竔 ch�! M蕐 t猲 n祔 kh玭g gi鑞g binh s� t莔 thng, b鋘 ch髇g v� ngh� cao cng, ci ng鵤 r蕋 t礽, l筰 c遪 bi誸 ph鉵g 竚 kh�.", 1, "Tng qu﹏! g kh玭g sao ch�?/#want2joincd2("..defencemap..")")
end

function want2joincd2(defencemap)
	local signmap = SubWorldIdx2ID( SubWorld )
	local defencesidx = SubWorldID2Idx( defencemap )
	oldSubWorld = SubWorld
	SubWorld = defencesidx
	local cd_membercount = GetMSPlayerCount(MISSIONID, 0)
	SetTask(TSKID_PLAYER_ZHANGONG,0) --清空战功值
	SubWorld = oldSubWorld
	Say(CD_SIGNNPCNAME..": Л頲 r錳! Kh玭g c莕 n鉯 nhi襲, n鉯 chung ta c秏 th蕐 lai l辌h c馻 b鋘 h� r蕋 kh� nghi, trong l骳 chi課 u n誹 ngi nh苩 頲 th� h祄 th� h穣 甧m n ta xem, ta s� tr鋘g thng! S� ngi tham gia th� th祅h l�<color=yellow>"..cd_membercount.."<color> ngi. Trc ti猲 ph秈 n閜 1 lng ph� b竜 danh, chu萵 b� s絥 s祅g ch璦?", 2, "ng v藋!/#sure2joincd("..defencemap..")", "в ta chu萵 b� !/OnCancel")
end

function laughtoleave()
	Talk(1, "", CD_SIGNNPCNAME.."Ta ch糿g s� b鋘 du m鬰 n祔! Ph秈 cho ch髇g bi誸 t礽 ngh� c馻 nh﹏ s� Trung nguy猲")
end

function cd_awardforpayout()
	if (camp == 1) then
		Talk(1, "", format("%s: H穣 nghe y, m鋓 ngi h穣 d鑓 h誸 to祅 l鵦 cho cu閏 chi課 n祔.", CD_SIGNNPCNAME))
	else
		Talk(1, "", format("%s: Qu﹏ Nam Man v蒼 ch璦 nh鬰 ch�, ch髇g quy誸 t﹎ gi祅h l筰 chi課 l頸 ph萴 m� binh s� ta ph秈 bao phen  m竨 m韎 c� 頲. C竎 d騨g s� h穣 quy誸 u tr薾 n祔!", CD_SIGNNPCNAME))
	end;
end;

function OnCancel()
end

function thuocphonghoa()
tbAwardTemplet:GiveAwardByList({{szName="Thu鑓 Lag",tbProp={6,1,190},nCount=50,nExpiredTime=70, nBindState = -2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thu鑓 Lag",tbProp={6,1,157},nCount=50,nExpiredTime=70, nBindState = -2},}, "test", 1);
end