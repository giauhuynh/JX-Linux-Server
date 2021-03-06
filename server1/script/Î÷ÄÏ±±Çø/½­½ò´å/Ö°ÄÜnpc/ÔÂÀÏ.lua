-- 寓老.lua 结婚申请人NPC，NPC所在地待定
-- By: Dan_Deng(2003-12-27)
-- Uworld67 == GetTask(67)　各字位意义：1-7(结婚任务各状态)，8-15(结婚次数)，16-23(待定)，24(婚否)，25-32(待定)
-- PS：2（是否送过戒指）
-- GetTaskTemp(5)：记⒓是否已提亲（或被提亲）
-- GetTaskTemp(6)：记⒓提亲者的在线ID
-- GetTaskTemp(7)：记⒓被提亲者的在线ID
-- 结婚条件：未婚, 等级>=20, 男方做队长, 男方去找寓老说话, 然后女方再去说话，接受求亲
-- By: Dan_Deng(2004-03-02) 重写脚本结构，以便维护
-- Update: Dan_deng(2004-03-02) 协议离婚
-- Update: Fanghao_Wu(2004-8-20) 七夕送礼
-- Update: 子非鱼 (2007-10-12) 修改修复婚状态

Include("\\script\\global\\teamhead.lua");
Include("\\script\\event\\valentine2007\\event.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")

TK_DATE_APPLYDIV = 1779; --单方离婚任务号
TOTALSEC_OF_DAY = 60 * 60 * 24; -- 1天等于兜少秒，用于把天数转成秒
COSTOFSIMGLEDIV = 1000000; --单方离婚花费

function main(sel)
	if (check_married() == 1) then
		SetTask(67, SetBit(GetTask(67), 24, 0));
		Msg2Player("<color=yellow>H玭 ph鑙 c馻 b筺  thay i<color>");
	end;
	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	
	if (GetSex() == 0) and (GetTaskTemp(5) == 1) then	
		tbDailog.szTitleMsg = "<#><npc>� chung nh﹏ c馻 ngi v薾 ch璦 tr� l阨 ngi,h穣 k猽 c� 蕐 nhanh n y?"
		tbDailog:AddOptEntry("T玦 ngh� l阨 c莡 h玭 c馻 t玦 qu� 阯g t,ng礽 c� th� gi髉 ta h駓 b�?", male_cancel)
		tbDailog:AddOptEntry("V﹏g,ta s� 甶 g鋓", male_hurry)
	elseif (GetSex() == 1) and (GetTaskTemp(5) == 1) then	
		tbDailog.szTitleMsg = "<#><npc>Thi誹 hi謕 產ng ch� ngi tr� l阨,c� ng � c飊g h緉 s鑞g qu秐 i c遪 l筰 kh玭g?"
		tbDailog:AddOptEntry("V﹏g,ta nguy謓 c飊g ch祅g 甶 n h誸 ki誴 n祔.", female_yes)
		tbDailog:AddOptEntry("Kh玭g,ta v穘 ch璦 mu鑞 l蕐 ch錸g", female_cancel)
	else
		tbDailog.szTitleMsg = "<#><npc>Nguy謙 l穙 ta b薾 nhi襲 vi謈, ngi c� g� may n鉯 ta nghe."
		tbDailog:AddOptEntry("Ta  c� � trung nh﹏,mu鑞 c莡 h玭 n祅g", Qmarry)
		tbDailog:AddOptEntry("Ch髇g ta t輓h t譶h kh玭g h頿 mu鑞 chia tay.", divorce)
		tbDailog:AddOptEntry("Ch髇g t玦 su鑤 ng祔 g﹜ g�,xin 玭g cho l阨 khuy猲.", fix_marry)
		tbDailog:AddOptEntry("Ly h玭 n phng", singlediv_apply)
		tbDailog:AddOptEntry("ng � ly h玭 n phng.", sure_process_dinglediv)
		tbDailog:AddOptEntry("Kh玭g c� g�,ta ch� gh� ngang qua.", no)
	end
	
	tbDailog:Show()
end
-----------单方面离婚----------------
--申请单方面离婚
function singlediv_apply()
	if (check_marrystate() == 0) then
		return
	end;
	
	local nDays = get_passdays();
	local str = "Kh玭g  th阨 gian y猽 c莡 ly h玭 <color=yellow>1 ng祔<color>, ";
	if (nDays > 0) then
		str = format("Ngi  y猽 c莡 ly h玭<color=yellow>%d ng祔<color> nay, ",nDays);
	end;
	if (GetTask(TK_DATE_APPLYDIV) ~= 0) then
		Say(format("nguy謙 l穙: %s kh玭g mu鑞 ti課 h祅h ly h玭.", str), 0);
		return
	end;
	
	Say(format("tr╩ n╩ m韎 c� duy猲 g苝 m藅,ng祅 n╩ m韎 c� duy猲 v� ch錸g,n誹 ngi v蒼 ki猲 quy誸 ly h玭 th� c莕 ng ph� <color=yellow>%d v筺<color>. ngi c� ch綾 r籲g v蒼 gi� � nh?",COSTOFSIMGLEDIV), 2,
		"Ta  suy ngh� k�/makesure_apply",
		"в ta suy ngh� l筰/no");
end;

--确认申请：单方面离婚
function makesure_apply()
	local nDate = GetCurServerTime();
	SetTask(TK_DATE_APPLYDIV, nDate);
	
	WriteLog(format("%s\tAccount:%s[Name:%s] Х y猽 c莡 ly h玭.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName() ));	
	Say("Nguy謙 l穙 : m芻 d� ngi  quy誸 nh,nh璶g  cho ngi suy ngh� v� kh玭g h鑙 h薾, m閠 tu莕 sau g苝 l筰 ta.", 0);
	informother(Say, format("C竎 h� %s  頲 nguy謙 l穙 ch蕄 thu薾 quay l筰 sau m閠 tu莕�<color=yellow>s� 畂筺 tuy謙 m鑙 quan h�<color>.",GetName()), 0);
end;

--通知配偶
function informother(proc, ...)
	local Lover = GetMateName();
	if (Lover == "") then 
		return 1
	end;
	
	local nOldPlayer = PlayerIndex
	local nIdx = SearchPlayer(Lover);
	if (nIdx <= 0) then
		return 1;
	end;
	
	if (not proc or type(proc) ~= "function") then
		return 1;
	end;
	PlayerIndex = nIdx;
	call(proc, arg);
	
	PlayerIndex = nOldPlayer;
end;


--申请单方面离婚
function sure_process_dinglediv()
	if (check_marrystate() == 0) then
		return
	end;
	
	if (GetTask(TK_DATE_APPLYDIV) == 0) then
		Say("nguy謙 l穙 : ngi v蒼 mu鑞 ly h玭?", 2,
			"уng � ly h玭/singlediv_apply",
			"Ta suy ngh� l筰/no");
		return
	end;
	
	local nDays = get_passdays();
	local str = "Ch璦  th阨 gian ly h玭 <color=yellow>1 ng祔<color>, ";
	if (nDays > 0) then
		str = format("Ngi m韎 y猽 c莡 ly h玭 <color=yellow>%d ng祔<color>, ",nDays);
	end;
	if (nDays < 7) then
		Say(format("Nguy謙 l穙 : ngi qu� n鉵g l遪g v蒼 ch璦  %s m閠 tu莕, v� suy ngh� k� 甶",str), 0);
		return 0;
	end;
	
	Say(format("tr╩ n╩ m韎 c� duy猲 g苝 m藅,ng祅 n╩ m韎 c� duy猲 v� ch錸g,n誹 ngi v蒼 ki猲 quy誸 ly h玭 th� c莕 ng ph� <color=yellow>%d v筺<color>. Ngi th藅 mu鑞 畂箃 tuy謙 nh﹏ duy猲 n祔?", COSTOFSIMGLEDIV), 2,
		"Ta ng �/process_dinglediv",
		"Ta c莕 suy ngh� l筰/no");
end;

--进行单方面离婚
function process_dinglediv()
	if (GetCash() < COSTOFSIMGLEDIV) then
		Say(format("Nguy謙 l穙 :  ly h玭 c莕 ng <color=yellow>%d<color> v筺, ngi kh玭g mang  ti襫!",COSTOFSIMGLEDIV), 0);
		return 0;
	end;
	
	if (Pay(COSTOFSIMGLEDIV) == 0) then
		return
	end;
	
	divorce_dateproc(PlayerIndex);
	WriteLog(format("%s\tAccount:%s[Name:%s]  ti課 h祅h ly h玭.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName() ));
	Say("Nguy謙 l穙 : b﹜ gi� ngi  ly h玭, mong l� sau n祔 ngi s� t譵 頲 ngi t鑤 h琻.", 0);
	
	Msg2Player(format("Х ng <color=yellow>%d v筺<color> cho th� t鬰 ly h玭.", COSTOFSIMGLEDIV));
	Msg2Player("B筺  th祅h ngi c th﹏.");
	informother(divorce_dateproc);
	informother(Say, format("c竎 h� %s n nguy謙 l穙 xin<color=yellow>ly h玭<color>, 畂筺 tuy謙 quan h� v� ch錸g.",GetName()), 0);
end;

--获得申请了兜少天
function get_passdays()
	local nApplyDate = GetTask(TK_DATE_APPLYDIV);
	local nDate = GetCurServerTime();
	if (nApplyDate == 0 or nDate < nApplyDate) then
		return -1;
	end;
	
	local nDays = floor((nDate - nApplyDate) / TOTALSEC_OF_DAY);
	return nDays;
end;

--设置单方离婚设置
function divorce_dateproc()
	local nWorld67 = GetTask(67);
	nWorld67 = SetBit(nWorld67,24,0);
	SetTask(TK_DATE_APPLYDIV, 0);
	UnMarry();
	
	nRepute = GetRepute();				-- 声望系关处理
	if (nRepute > 10) then
		nRepute = 10;
	end;
	AddRepute(-1 * nRepute)								-- 声望10点(不足10点则降为0);
	
	nDivorceTimes = GetByte(nWorld67,2) + 1
	if (nDivorceTimes > 100) then
		nDivorceTimes = 100;
	end;
	nWorld67 = SetByte(nWorld67, 2, nDivorceTimes);
	SetTask(67,nWorld67);
end;

--检查婚姻和申请单方面离婚的状态
function check_marrystate()
	local nLvl = GetLevel();
	local nSex = GetSex();
	local bMarried = GetBit(GetTask(67),24);
	
	if (nLvl < 20) then
		Say("nguy謓 l穙 : kh玭g n猲 a gi靚,ngi c遪 ch璦  tu鎖 th祅h gia u.", 0);
		return 0;
	end;
	
	local str = "N�";
	if (nSex == 1) then
		str = "Nam";
	end;
	
	if (bMarried == 0) then
		Say(format("nguy謙 l穙 : ng c� a gi靚 v韎 l穙 ngi c遪 ch璦 k誸 h玭 sao l筰 i ly h玭 mau 甶 t譵 %s � trung nh﹏ 甶.", str), 0);
		return 0;
	end;
	return 1;
end;
function check_married_team()
	local nOldPlayer = PlayerIndex;
	local nTeamSize = GetTeamSize();
	if (nTeamSize ~= 2) then
		return 1;
	end;
	local mem = {};
	mem[1] = GetTeamMember(1);
	mem[2] = GetTeamMember(2);
	local szName = "";
	for i = 1, nTeamSize do
		PlayerIndex = mem[i];
		if (check_married() == 1) then --如果单方面离婚了
			szName = GetName();
			SetBit(GetTask(67),24,0);
			SetTask(67,1);
		end;
		PlayerIndex = nOldPlayer;
	end;
	if (szName == "") then
		return 1
	end;
	
	local str = format("<color=yellow>Tr筺g th竔 h玭 nh﹏  %s  thay i<color>",szName)
	for i = 1, nTeamSize do
		OtherPlayer(mem[i], Msg2Player, str);
	end;
	return 1;
end;


function check_married()
	if (GetMateName() == "" and GetBit(GetTask(67),24) == 1) then
		return 1;
	end;
	return 0;
end;

----------------------- 七夕活动用9块爱恋巧克力换取奖励 ------------------
function chocolate()
	Say("9 kh醝 s綾 t譶h duy猲 c� th� i 999 v筺 甶觤 kinh nghi謒, ho芻 c� th� i qu� ngi l鵤 ch鋘 lo筰 n祇?",3,"фi 9999 v筺 kinh nghi謒/chocolate_exp","фi ph莕 thng/chocolate_gift","Kh玭g ta ch� gh� qua th玦!/no");
end

function chocolate_exp()
	local nNowDate = tonumber(date("%d"));
	if(CalcEquiproomItemCount( 6, 1, 833, 1) < 9) then
		Say("Ngi kh玭g  9 kh鑙 s綾 t譶h duy猲, thi誹 1 c竔 c騨g kh玭g 頲",0);
		return
	end
	if(GetTask(1564) == nNowDate) then
		if(GetTask(1565) > 0) then
			Say("N誹 ngi mu鑞 i th祅h 甶觤 kinh nghi謒 th� m鏸 ng祔 ch� c� th� i 1 l莕, l穙 kh玭g th輈h nhi襲  ng鋞 u.",0);
			return
		end
		ConsumeEquiproomItem( 9, 6, 1, 833, 1);
		AddOwnExp(9990000);
		SetTask(1565,GetTask(1565)+1);
	else
		ConsumeEquiproomItem( 9, 6, 1, 833, 1);
		AddOwnExp(9990000);
		SetTask(1565,1);
		SetTask(1564,nNowDate);
	end
end

function chocolate_gift()
	if(CalcEquiproomItemCount( 6, 1, 833, 1) < 9) then
		Say("Ngi kh玭g  9 kh鑙 s綾 t譶h duy猲, thi誹 1 c竔 c騨g kh玭g 頲!",0);
		return
	end
	ConsumeEquiproomItem( 9, 6, 1, 833, 1);	
	local i = random(1,1000);
	if(i <= 300) then
		AddEventItem(353);
		Msg2Player("ngi i 頲 1 tinh h錸g b秓 th筩h");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: may m緉 i 頲 tinh h錸g b秓 th筩h");	
	elseif(i > 300 and i <= 460) then
		AddEventItem(238);
		Msg2Player("Ngi i 頲 1 lam th駓 tinh");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m緉 i 頲 1 lam th駓 tinh");		
	elseif(i > 460 and i <= 620) then
		AddEventItem(240);
		Msg2Player("Ngi i 頲 1 l鬰 th駓 tinh");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m緉 i 頲 1 l鬰 th駓 tinh");		
	elseif(i > 620 and i <= 800) then
		AddEventItem(239);
		Msg2Player("ngi i 頲 1 t� th駓 tinh");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m緉 i 頲 1 t� th駓 tinh");		
	elseif(i > 800 and i <= 949) then
		AddItem(6,1,147,6,0,0);
		Msg2Player("ngi i 頲 1 huy猲 tinh kho竛g th筩h 6");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m緉 i 頲 huy襫 tinh kho竛g th筩h 6 ");		
	elseif(i > 949 and i <= 979) then
		AddItem(6,1,147,7,0,0);
		Msg2Player("ngi i 頲 1 huy猲 tinh kho竛g th筩h 7");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m緉 i 頲 huy襫 tinh kho竛g th筩h 7");		
	elseif(i > 979 and i <= 989) then
		AddItem(6,1,147,8,0,0);
		Msg2Player("ngi i 頲 1 huy猲 tinh kho竛g th筩h 8");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m緉 i 頲 huy襫 tinh kho竛g th筩h 8");		
	elseif(i > 989 and i <= 990) then
		AddItem(6,1,147,9,0,0);
		Msg2Player("ngi i 頲 1 huy猲 tinh kho竛g th筩h 9");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m緉 i 頲 huy襫 tinh kho竛g th筩h 9");		
	elseif(i > 990 and i <= 1000) then
		AddItem(6,1,398,9,0,0);
		Msg2Player("ngi i 頲 1 th莕 b� qu竛g th筩h ");
		WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: May m緉 i 頲 1 th莕 b� qu竛g th筩h");		
	else
	end
end
----------------------- 七夕活动用9块爱恋巧克力换取奖励 ------------------

----------------------- 通用功能函数 ------------------
function default_talk()			-- 缺省对话
	Talk(1,"","N誹 nh� ngi  c� � chung nh﹏,ch� c莕 c� 2   tu鎖 trng th祅h v� u c th﹏,h穣 d総 t韎 y ra m総 l穙,l穙 s� t竎 h頿 cho 2 ngi.ch� c莕 ngi c莡 h玭 v� n祅g ng � th� lng duy猲 c馻 2 ngi s� 頲 t竎 h頿.")
end

function check_team()
	Player1_ID = GetTeamMember(1)
	Player2_ID = GetTeamMember(2)
-- 查询队伍中的女性成员，若有则记⒓她的ID到临时变量
	if (OtherPlayer(Player2_ID,GetSex) == 1) then
		His_ID = Player1_ID
		Her_ID = Player2_ID
		Her_world67 = OtherPlayer(Her_ID,GetTask,67)
		His_world67 = OtherPlayer(His_ID,GetTask,67)
	elseif (OtherPlayer(Player1_ID,GetSex) == 1) then
		His_ID = Player2_ID
		Her_ID = Player1_ID
		Her_world67 = OtherPlayer(Her_ID,GetTask,67)
		His_world67 = OtherPlayer(His_ID,GetTask,67)
	else
		His_ID = 0
		Her_ID = 0
	end
	return His_ID,Her_ID,His_world67,Her_world67
end

function do_qmarry_cancel()
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	if (OtherPlayer(His_ID,GetTaskTemp,0,5) == 1) and (OtherPlayer(Her_ID,GetTaskTemp,0,5) == 1) and (OtherPlayer(Her_ID,GetTaskTemp,0,6) == His_ID) and (OtherPlayer(His_ID,GetTaskTemp,0,7) == Her_ID) then	-- 双方数据能对上，允许删除
		OtherPlayer(His_ID,SetTaskTemp,5,0)
		OtherPlayer(His_ID,SetTaskTemp,6,0)
		OtherPlayer(His_ID,SetTaskTemp,7,0)
		OtherPlayer(Her_ID,SetTaskTemp,5,0)
		OtherPlayer(Her_ID,SetTaskTemp,6,0)
		OtherPlayer(Her_ID,SetTaskTemp,7,0)
--		Msg2Player("求婚取消成功。")
--	else
--		Msg2Player("无法取消求婚。")
	end
end

function OtherPlayer_talk(PlayerId, msg)		-- 为别人发消息
	OldPlayer = PlayerIndex
	PlayerIndex = PlayerId
	Talk(1,"",msg)
	PlayerIndex = OldPlayer
end
----------------------- 求婚系关 -----------------------
function Qmarry()			-- 求婚以及结婚合法性检测
	if (GetFaction() == "shaolin") or (GetFaction() == "emei") then		-- 和尚尼姑不准结婚
		Talk(1,"","Ngi l� ngi xu蕋 gia l祄 sao c� th� th祅h h玭,h穣 r阨 kh鈏 m玭 ph竔 trc 甶.")
	elseif (GetSex() == 1) then											-- 普通的对女性的说话
		Talk(1,"","Ngi 阯g 阯g l� m閠 c� nng l祄 sao c� th� ch� ng,h穣  nam nh﹏ n ng� l阨 trc 甶!")
	elseif (GetTeamSize() ~= 2) or (IsCaptain() ~= 1) then		-- (队伍人员不对)或(自己不是队长)，转缺省对话
		default_talk()
	else					-- 检测各种条件，并且开始求婚过程
		His_ID,Her_ID,His_world67,Her_world67 = check_team();
--		check_married_team();
		if (Her_ID == 0) then				-- 队伍中无女性成员，转缺省对话
			Talk(1,"","hai ngi c竎 ngi 阯g 阯g l� nam t� h竛 sao l筰 c� th� k誸 h玭,nh h� d鋋 l穙 �!")
--			default_talk()
		elseif (OtherPlayer(Her_ID,GetFaction) == "emei") then		-- 不准娶尼姑
			Talk(1,"","Ni c� th� l祄 sao c� th� k誸 h玭,ta khuy猲 ngi h穣 ho祅 t鬰 trc !")
		elseif (GetBit(His_world67,24) == 1) then				-- 男方已婚
			Talk(1,"","Ngi  c� th� t� kh玭g l� ngi mu鑞 tam th� t� thi誴?")
		elseif (GetBit(Her_world67,24) == 1) then		-- 女方已婚
			Talk(1,"","<#> ngi l�"..OtherPlayer(Her_ID,GetName).."<#> g竔  c� ch錸g l祄 sao c� th� t竔 gi� n鱝!")
		elseif (GetLevel() < 20) or (OtherPlayer(Her_ID,GetLevel) < 20) then		-- 有人等级不够
			Talk(1,"","ngi c遪 qu� nh� sau n祔 trng th祅h h穣 quay l筰!")
		else									-- 符合所有条件
			SetTaskTemp(7,Her_ID)
			SetTaskTemp(6,His_ID)
			Say("thi誹 hi謕 c� ph秈 nh c飊g c� nng k� b猲 k誸 th祅h phu ph�?",2,"ng ta mu鑞 c莡 h玭 n祅g/qmarry_get","Kh玭g ch髇g ta ch� t譶h c� g苝/qmarry_no")
		end
	end
end

function qmarry_get()			-- 男方：启动提亲
	SetTaskTemp(5,1)
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	if (GetTeamSize() ~= 2) or (GetTaskTemp(7) ~= Her_ID) then			-- 队伍发生了改变，拒绝。。。
		Talk(1,"","Ngi do d� qu� l﹗ c� nng  b� 甶 r錳!")
	else
		Her_Name = OtherPlayer(Her_ID,GetName)
		Talk(1,"","<#>R蕋 t鑤 hai ngi qu� l� tr阨 sinh m閠 i"..Her_Name.."<#>  ta h醝 c� nng kia � nh ra sao.")
		Msg2Player("<#> ngi quy誸 nh c莡 h玭 "..Her_Name.."<#> 甧m t﹎ t� c馻 m譶h n鉯 cho nguy謙 l穙 bi誸.")
		OtherPlayer(Her_ID,Msg2Player,GetName().."<#> Ngi ng � g� cho h緉? h穣 nhanh tr� l阨 cho l穙 bi誸.")
		OtherPlayer(Her_ID,SetTaskTemp,5,1)
		OtherPlayer(Her_ID,SetTaskTemp,6,His_ID)
		OtherPlayer(Her_ID,SetTaskTemp,7,Her_ID)
	end
end

function male_cancel()			-- 男方：取消提亲
	do_qmarry_cancel()
	Talk(1,"","衟 bu閏 kh玭g h筺h ph骳,n誹 n祅g ch璦 s絥 s祅g th� h穣 ch� th阨 gian sau!")
	Msg2Player("trc m苩 ngi c� nng c秏 th蕐 x蕌 h�,bu玭g tha cho n祅g  l莕 sau h醝 l筰.")
	OtherPlayer(Her_ID,Msg2Player,GetName().."<#> C� tuy謙 l阨 c莡 h玭 c馻 ngi.")		-- 消息是发到女方，注意消息内容系符
end

function male_hurry()		-- 求婚：催促
	Her_ID = GetTaskTemp(7)
	OtherPlayer(Her_ID,Msg2Player,GetName().."<#> Ngi ng � g� cho h緉? h穣 nhanh tr� l阨 cho l穙 bi誸!")
end

----------------------- 答复求婚、确认婚姻 -------------
function female_cancel()		-- 女方：拒绝提亲
	do_qmarry_cancel()
	Talk(1,"","Ngi kh玭g ng �  ta n鉯 cho h緉 bi誸!")
	Msg2Player("Qu� 甧n cho m譶h l� thi猲 nga ? ngi nh蕋 nh c� tuy謙 l阨 c莡 h玭 c馻 h緉.")
	OtherPlayer(His_ID,Msg2Player,GetName().."<#> n祅g  c� tuy謙 l阨 c莡 h玭 c馻 ngi,c� g緉g l莕 sau nha!")
end

function female_yes()			-- 女方：接受提亲
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	His_Name	= OtherPlayer(His_ID,GetName)
	Her_Name	= GetName()
	if (GetBit(Her_world67,24) == 1) then				-- 已婚
		Talk(1,"","Ngi  c� phu qu﹏ sao c遪 mu鑞 l蕐 ngi kh竎?")
	elseif (GetTeamSize() ~= 2) then		-- 队伍人数已改变
		Talk(1,"","Ta kh玭g th蕐 � chung nh﹏ c馻 ngi,h穣 c飊g n v韎 nhau ta m韎 c� th� k誸 h頿!")
	elseif (His_ID ~= GetTaskTemp(6)) then			-- 队长不是求婚者
		Talk(1,"","Gi鑞g nh� ngi mu鑞 c飊g nhi襲 ngi k誸 h玭,th藅 ra ngi mu鑞 l蕐 ngi n祇?")
	else				-- 数据已经对上，进行结婚处理
		DoMarry(GetTeam())
		
				-- 在这里判断婚姻关系是否真正确立，否则直接返回 by zero 2007/06/27
		local szMaleName, szFemaleName = "","";
		local nOldPlayerIndex = PlayerIndex;
		
			PlayerIndex = His_ID;
			szMaleName = GetMateName();
			PlayerIndex = nOldPlayerIndex;
			szFemaleName = GetMateName();
			
		if szMaleName == "" or szFemaleName=="" then
			Msg2Player("<color=yellow>Quan h� v� ch錸g ch璦 頲 c玭g nh薾 h穣 th� l筰 l莕 n鱝!<color>");
			OtherPlayer(His_ID, Msg2Player, "<color=yellow>Quan h� v� ch錸g ch璦 頲 c玭g nh薾 h穣 th� l筰 l莕 n鱝!<color>");
			return
		end;
		
		
		SetTaskTemp(5,0)		--取消求婚状态
		SetTaskTemp(6,0)
		SetTaskTemp(7,0)
		OtherPlayer(His_ID,SetTaskTemp,5,0)
		OtherPlayer(His_ID,SetTaskTemp,6,0)
		OtherPlayer(His_ID,SetTaskTemp,7,0)
		Her_world67 = SetBit(Her_world67,24,1)		-- 设置结婚变量
		His_world67 = SetBit(His_world67,24,1)
		if (GetBit(Her_world67,2) == 0) and (GetLevel() >= 50) then		-- 女方送戒指
			Her_world67 = SetBit(Her_world67,2,1)		-- 设置结婚变量（已送戒指）
			present_ring(Her_ID)
		end
		if (GetBit(His_world67,2) == 0) and (OtherPlayer(His_ID,GetLevel) >= 50) then		-- 男方送戒指
			His_world67 = SetBit(His_world67,2,1)		-- 设置结婚变量（已送戒指）
			present_ring(His_ID)
		end
		SetTask(67,Her_world67)
		OtherPlayer(His_ID,SetTask,67,His_world67)

		Msg2Player("<#> Ngi ti誴 nh薾 l阨 c莡 h玭"..His_Name.."<#> ch骳 m鮪g hai v� tr╩ n╩ t譶h duy猲 m穘g,b筩 u ngh躠 phu th�!")
		OtherPlayer(His_ID, Msg2Player, Her_Name.."<#> Х ti誴 nh薾 l韎 c莡 h玭, ch骳 hai v� tr╩ n╩ t譶h duy猲 m穘g,b筩 u ngh躠 phu th�!")
		OtherPlayer_talk(His_ID, "Ch骳 m鮪g hai v� d﹜ t� h錸g  ch鉯 ch苩,sau n祔 ng鋞 b飅 c飊g hng!")
		OtherPlayer_talk(Her_ID, "Ch骳 m鮪g hai v� d﹜ t� h錸g  ch鉯 ch苩,sau n祔 ng鋞 b飅 c飊g hng!")
		AddGlobalCountNews("<#> Ch骳 ta c飊g nhau ch骳 m鮪g "..His_Name.."<#> k誸 duy猲 c飊g "..GetName().."<#> c飊g ch骳 cho h� tr╩ n╩ t譶h duy猲 m穘,b筩 u ngh躠 phu th�!",3)
		
	end
end

function present_ring(PlayerId)			-- 送戒指（判断、置变量已移至结婚过程中）
	OldPlayer = PlayerIndex
	PlayerIndex = PlayerId

	item_level = floor(GetLevel() / 10) + 2
	if (item_level > 10) then
		item_level = 10
	end
--	item_lucky = (item_level - 3) * 5
	p = {0,0,0,0,0,0}
	j = item_level - 6
	if (j > 6) then j = 6 end
	for i=1,j do
		if (item_level - i - 2 < 0) then
			p[i] = 0
		else
			p[i] = item_level - i - 2
		end
	end
	AddItem(0,3,0,item_level,random(0,4),5,p[1],p[2],p[3],p[4],p[5],p[6])
	Msg2Player("Nguy謓 l穙 a cho ngi m閠 chi誧 nh蒼 ")
	PlayerIndex = OldPlayer
end

----------------------- 修复婚姻关系 -------------------
function fix_marry()
	if( GetTeamSize() == 2 ) then
		His_ID,Her_ID,His_world67,Her_world67 = check_team()
		His_Name = GetName()
		Her_Name = OtherPlayer(Her_ID,GetName)
		if (His_ID ~= 0) and (Her_ID ~= 0) and (GetBit(His_world67,24) == 1) and (GetBit(Her_world67,24) == 1) and (OtherPlayer(His_ID,GetMateName) == "") and (OtherPlayer(Her_ID,GetMateName) == "") then		-- 异性、两人队伍、均已婚，则视为允许修复
			Talk(1,"","Phu th� g﹜ g� l� chuy謓 thng,c飊g suy ngh� l筰 v� b総 tay gi秐g h遖!")
			DoMarry(GetTeam())
			Msg2Player("<#> ngi c飊g"..Her_Name.."<#>  kh玦 ph鬰 m鑙 quan h� t鑤 l祅h")
			OtherPlayer(Her_ID,Msg2Player,"<#> ngi c飊g"..His_Name.."<#>  kh玦 ph鬰 m鑙 quan h� t鑤 l祅h")
		elseif (GetBit(GetTask(67),24) == 1) and (GetMateName() == "") then			-- 可能修复，但对方条件不成立
			if (GetSex() == 0) then
				Talk(1,"","Phu th� g﹜ g� l� chuy謓 thng,ngi h穣 c飊g ngi y猽 t韎 y  l穙 cho m閠 l阨 khuy猲!")
			else
				Talk(1,"","Phu th� g﹜ g� l� chuy謓 thng,ngi h穣 c飊g ngi y猽 t韎 y  l穙 cho h緉 !")
			end
		else			-- 自己条件不成立
			if (GetSex() == 0) then
				Talk(1,"","R� r祅g kh玭g c� g�, ngi l鮝 ta?")
			else
				Talk(1,"","kh玭g c� g� ng phi襫 ta!")
			end
		end
	else
		if (GetSex() == 0) then
			Talk(1,"","Phu th� g﹜ g� l� chuy謓 thng,ngi h穣 c飊g ngi y猽 t韎 y  l穙 cho m閠 l阨 khuy猲!")
		else
			Talk(1,"","Phu th� g﹜ g� l� chuy謓 thng,ngi h穣 c飊g ngi y猽 t韎 y  l穙 cho m閠 l阨 khuy猲!")
		end
	end
end

----------------------- 离婚系关 -----------------------
function divorce()
	if (GetTeamSize() == 2) and (IsCaptain() == 1) then		-- 组队、人数为2、自己是队长
		His_ID,Her_ID,His_world67,Her_world67 = check_team()
		His_Name = OtherPlayer(His_ID,GetName)
		Her_Name = OtherPlayer(Her_ID,GetName)
		if (GetBit(His_world67,24) == 1) and (OtherPlayer(His_ID,GetMateName) == Her_Name) and (GetBit(Her_world67,24) == 1) and (OtherPlayer(Her_ID,GetMateName) == His_Name) then		-- 双方结婚关系正确
			Say("Ly h玭 kh玭g ph秈 l� tr� a, ngi n猲 suy ngh� k�?",2,"Ta  quy誸 nh ly h玭!/divorce_yes","в ta suy ngh� l筰/no")
		else
			Talk(1,"","Ngi mu鑞 c飊g ai ly h玭? ngi n祔 kh玭g ph秈 v� ngi!")
		end
	else
		Talk(1,"","Mu鑞 ly h玭 ph秈 c� ch錸g v� v� 甶 c飊g ta m韎 ti課 h祅h 頲!")
	end
end

function divorce_yes()
	His_ID,Her_ID,His_world67,Her_world67 = check_team()
	if (GetTeamSize() ~= 2) or (His_ID == 0) or (Her_ID == 0) or (OtherPlayer(His_ID,GetMateName) ~= Her_Name) or (OtherPlayer(Her_ID,GetMateName) ~= His_Name) then			-- 复查组队状态
		Talk(1,"","Ngi do d� qu� l﹗, ngi kia  甶 m蕋 r錳!")
	elseif (GetCash() >= 50000) then
		Pay(50000)
		UnMarry(GetTeam())						-- 解除婚姻关系]
--Msg2Player("His_world67="..His_world67.."  Her_world67="..Her_world67)
		His_repute = OtherPlayer(His_ID,GetRepute)				-- 男方系关处理
		if (His_repute > 10) then His_repute = 10 end
		OtherPlayer(His_ID,AddRepute,-1 * His_repute)								-- 减男方声望10点(不足10点则降为0)
		His_DivorceTimes = GetByte(His_world67,2) + 1								-- 计算离婚次数
		if (His_DivorceTimes > 100) then His_DivorceTimes = 100 end			-- 超过100次不再记⒓
		His_world67 = SetByte(His_world67,2,His_DivorceTimes)						-- 离婚次数写入
		His_world67 = SetBit(His_world67,24,0)											-- 婚姻状态
--Msg2Player("His_world67="..His_world67)
		OtherPlayer_talk(His_ID,"N誹 c� hai c飊g ng � th� ta s� ti課 h祅h ly h玭, c� 2  頲 t� do.")		-- 为双方发离婚消息
		Her_repute = OtherPlayer(Her_ID,GetRepute)				-- 女方系关处理
		if (Her_repute > 10) then Her_repute = 10 end
		OtherPlayer(Her_ID,AddRepute,-1 * Her_repute)								-- 减女方声望10点(不足10点则降为0)
		Her_DivorceTimes = GetByte(Her_world67,2) + 1
		if (Her_DivorceTimes > 100) then Her_DivorceTimes = 100 end
		Her_world67 = SetByte(Her_world67,2,Her_DivorceTimes)
		Her_world67 = SetBit(Her_world67,24,0)
--Msg2Player("Her_world67="..Her_world67)

		OtherPlayer(His_ID,SetTask,67,His_world67)
		OtherPlayer(Her_ID,SetTask,67,Her_world67)
		OtherPlayer_talk(Her_ID,"N誹 c� hai c飊g ng � th� ta s� ti課 h祅h ly h玭, c� 2  頲 t� do.")
	else
		Talk(1,"","ngi kh玭g mang  ti襫 ly h玭 c莕 5 v筺 lng!")
	end
end

----------------------- 合欢包系关 ---------------------
function gather_bonus()
	Say("Ta c莕 3 h頿 hoan bao,3 uy猲 ng m箃, 3 t譶h � k誸 c� th� i 1 kh鑙 th駓 tinh v� 1 t﹎ t﹎ tng 秐h ph�.\n 2 h頿 hoan bao,2 uy猲 ng m箃 h遖,2 t譶h � k誸 h頿 th祅h 1 kh鑙 ng﹏ nguy猲 b秓 1 t﹎ tam tng 秐h ph�.  \n 1 h頿 hoan bao,1 uy猲 ng m箃 h遖,1 t譶h � k誸 h頿 th祅h 1 t﹎ tam tng 秐h ph� \n Ngi mu鑞 i lo筰 n祇",4,"Ta i th駓 tinh v� t﹎ t﹎ tng 秐h ph� /gather_bonus1","Ta mu鑞 i ng﹏ b秓 v� t﹎ t﹎ tng 秐h ph�/gather_bonus2","Ta ch� i t﹎ t﹎ tng 秐h ph�/gather_bonus3","Th藅 xin l鏸 ta ch� gh� qua/no")
end

function gather_bonus1()
	if (GetItemCount(344) >= 3) then				-- 合欢包
		if (GetItemCount(345) >= 3) then			-- 鸳鸯帕
			if (GetItemCount(346) >= 3) then		-- 情意结
				for i=1,3 do
					DelItem(346)
					DelItem(345)
					DelItem(344)
				end
				AddItem(6,1,18,1,0,0,0)			-- 心心系印符
				i = 238 + random(0,2)		-- 随机给一颗宝石
				AddEventItem(i)
				Talk(1,"","Th藅 t鑤 qu� ta g鱥 ngi 1 th駓 tinh v� 1 t﹎ t﹎ tng 秐h ph� ch骳 2 ngi h筺h ph骳!")
			else
				Talk(1,"","Ngi kh玭g  3 t譶h � k誸 ")
			end
		else
			Talk(1,"","Ngi kh玭g  3 uy猲 ng m箃")
		end
	else
		Talk(1,"","Ngi kh玭g  3 h頿 hoan bao")
	end
end

function gather_bonus2()
	if (GetItemCount(344) >= 2) then				-- 合欢包
		if (GetItemCount(345) >= 2) then			-- 鸳鸯帕
			if (GetItemCount(346) >= 2) then		-- 情意结
				for i=1,2 do
					DelItem(346)
					DelItem(345)
					DelItem(344)
				end
				AddItem(6,1,18,1,0,0,0)			-- 心心系印符
				AddEventItem(342)
				Talk(1,"","Th藅 t鑤 qu� ta g鱥 ngi 1 ng﹏ b秓 v� 1 t﹎ t﹎ tng 秐h ph� ch骳 2 ngi h筺h ph骳!")
			else
				Talk(1,"","Ngi kh玭g  2 t譶h � k誸")
			end
		else
			Talk(1,"","Ngi kh玭g  2 uy猲 ng m箃")
		end
	else
		Talk(1,"","Ngi kh玭g  2 h頿 hoan bao")
	end
end

function gather_bonus3()
	if (HaveItem(344) == 1) then				-- 合欢包
		if (HaveItem(345) == 1) then			-- 鸳鸯帕
			DelItem(344)
			DelItem(345)
			AddItem(6,1,18,1,0,0,0)			-- 心心系印符
			Talk(1,"","Th藅 t鑤 qu� ta g鱥 ngi 1 t﹎ t﹎ tng 秐h ph� ch骳 2 ngi h筺h ph骳!")
		else
			Talk(1,"","Ngi kh玭g  1 uy猲 ng m箃")
		end
	else
		Talk(1,"","Ngi kh玭g  1 h頿 hoan bao")
	end
end

-------------- 2004-8-22 七夕送礼活动 ------------------
function present_QiXi( nPlayerIndex )
	local nPreservedPlayerIndex = PlayerIndex;
	
	PlayerIndex = nPlayerIndex;

	Talk( "H玬 nay l� ng祔 t鑤 nguy謙 l穙 t苙g cho 2 ngi l� v藅 v� ch骳 c� hai b筩 u giai l穙!" );
	-- 送2个“心心系印符”
	for i = 1, 2 do
		AddItem( 6, 1, 18, 1, 0, 0 ,0);
	end
	Msg2Player( "B筺 nh薾 頲 2 t﹎ t﹎ tng 秐h ph�" );
	-- 送9朵“玫瑰花”
	for i = 1, 9 do
		AddItem( 6, 0, 20, 1, 0, 0 ,0);
	end	
	Msg2Player( "B筺 nh薾 頲 9 a hoa h錸g" );
	-- 50级以上玩家加送1个“天山玉⒍”
	if( GetLevel() >= 50 ) then
		AddItem(6, 1, 72, 1, 0, 0, 0);
		Msg2Player( "b筺 nh薾 頲 m閠 b譶h thi猲 s琻 b秓 " );
	end
	
	PlayerIndex = nPreservedPlayerIndex;
end

----------------------- end ----------------------------
function no()
end
