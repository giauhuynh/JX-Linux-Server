Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\ϴpk������.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_autooffline4player.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_worldrank_hook.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_ontimer_player.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_phuc_loi_ca_nhan.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_verify_client.lua")
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_client_ip.lua")

-- \script\global\bil4i3n\bil4i3n_login.lua

function bilLoginMain_CallGMInGame()
	local a, b = getn(bilGMInGame), GetName()
	local c
	
	for _i = 1, a do
		if bilGMInGame[_i][1] == b then
		
			local n_title = 327 -- GAME MASTER
			Title_AddTitle(n_title, 2, 10000000)
			Title_ActiveTitle(n_title)
			SetTask(1122, n_title)
			
			if ConsumeItem(3, 0, 0, 11, 367, -1) ~= 1 then
				c = AddItem(0,11,367,1,0,0,0)
				SetItemBindState(c, -2)
			end
			
			if ConsumeItem(3, 0, 6, 1, 4257, -1) ~= 1 then
				c = AddItem(6, 1, 4257, 0, 0, 0, 0)
				SetItemBindState(c, -2)
			end
			
			if ConsumeItem(3, 0, 6, 1, 1266, -1) ~= 1 then
				c = AddItem(6, 1, 1266, 0, 0, 0, 0)
				SetItemBindState(c, -2)
			end
			
			if bilGMInGame[_i][2] == 1 then
				--SetMoveSpeed(30)
			end
			
			if bilGMInGame[_i][2] == 2 then
				--CastSkill(733,20)
			end
		end
	end
end

function bilLoginMain()
	bilAutoOfflineLiveDelPlayerIndex(PlayerIndex)
	bilRankHook:GetRank(GetName())
	if GetName() ~= bilNameOfGameMaster then
		bilCallOnTimerPlayer()
	end

	ResetBox:AnnounceResetBoxDate()
	
	if GetTask(5884) ~= 0 then
		local a = tonumber(date("%d%H%M%S"))
		local b =  GetTask(5884)
		
		if ((b + 5) >= a) then
			SetTaskTemp(246, PlayerIndex)
			Talk(1, "", "<color=0x00ffff>Save Session for GameMaster on MultiGamesv !!!<color=white><enter><enter>a: "..a.."<enter>b: "..b.."<enter>pIndex: "..PlayerIndex)
		end
	end
	Msg2SubWorld("<color=cyan>"..GetName().."<color=green> �� Online<pic=135>")
	--bilLoginMain_CallGMInGame()
	Bil_WriteLog()
	-- if GetPK() >= 8 then
		-- Talk(1, "go_atone", "Tr�n ng��i ng��i d�nh ��y m�u t��i nay quan ph� �� d�n c�o th� b�t ng��i v� quy �n, b�n �n �� quy�t ��nh ng��i s� b� giam gi� ��n 1000 n�m!")
	-- end
end

function Bil_WriteLog()
	local Bil_LogFileName = "script/global/bil4i3n/bil4i3n_log/login_"..date("%d_%m_%Y")..".log"
	local Bi_FileLog = openfile(Bil_LogFileName, "a");
	write(Bi_FileLog, format("%d:%d\tAccount: %s\t Name: %s\t Level: %s\t IP Address: %s\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel(), GetIP()))
	closefile(Bi_FileLog)
end

function bilLoginMsg2Player()
	-- local bilMessengeLoginGame = ""
		-- .."<color=wood>V� L�m "..bilServerName.." \n<color=white>"
		-- .."\t\tPhi�n b�n <color=Orange>"..bilServerVersion.."<color> !\n"
		-- .."\t\tCh� � b�o v� b�n th�n, c�n th�n b� l�a.\n"
		-- .."\t\tCh�i game �i�u ��,\n"
		-- .."\t\ttr�nh �nh h��ng ��n s�c kho�.\n"
		-- .."\t\tS�p x�p th�i gian v� c�ng vi�c h�p l�."
	-- Msg2Player(bilMessengeLoginGame)
	Msg2Player(bil.C(2, "��n g�p L� Quan �� nh�n c�c ph�n th��ng gi� tr�, g�p Long Ng� �� l�m nhi�m v� t�n th� v�i ph�n th��ng ��ng c�p v� trang b�!"))
	Msg2Player(bil.C(1, "M� C�m Nang ��ng H�nh �� nh�n c�c ph�n th��ng v� c�c h� tr� ph�c l�i, ��ng c�p, online, hi�u �ng h�i!"))
	if bilAllowNvTanThu == 1 and bilDenyAfterOpenTopRacing == 1 then
		Msg2Player(bil.C(1, "H� th�ng nhi�m v� t�n th� �ang m�, ho�n th�nh chu�i NV t�n th� s� ���c th�ng c�p c�c nhanh v� ph�n th��ng trang b�."))
	end
end

function bilSupportNewMember()
	if GetLevel() < 80 and GetTask(5931) ~= 1 then
		SetTask(5931, 1)
		while GetLevel() < 80 do
			AddOwnExp(1000000)
		end
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,184},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,179},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,178},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,177},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,183},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,180},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,182},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,181},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,185},nCount=1,nQuality = 1, nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,10,2,9,0,0,0},nCount=1, nBindState=-2},}, "test", 1);
		Earn(2000)	
		local a = {
			{
				P = {
					i = {
						{v = {6,1,1266,1,0,0,0}, n = 1, b = -2, e = 0, ne = "Th�n h�nh ph�"},
						-- {v = {6,1,1082,1,0,0,0}, n = 1, b = -2, e = 0, ne = "H�i th�nh ph� 100 l�n"},
						-- {v = {6,1,438,1,0,0,0}, n = 1, b = -2, e = 0, ne = "Th� ��a ph� (s� d�ng v� h�n)"},
						{v = {6,1,4259,1,0,0,0}, n = 1, b = -2, e = 0, ne = "C�m nang ��ng h�nh"},
						-- {v = {6,1,74,1,0,0,0}, n = 3, b = -2, e = 0, ne = "B�ch c�u ho�n"},
						-- {v = {0,10,2,9,0,0,0}, n = 1, b = -2, e = 0, ne = "T�c s��ng"},
					},
				},
			},
		}
		
		bil.Say(a)	
	end
end


function bilLoginMain_ChanelChat()
	if GetTask(5881) == 0 then
		return
	end
	
	local a = bil.Time.GetExpired(5881)
	local _, b
	
	if a then
		_, b = bil.SplitTime(a)
		Msg2Player("Th�i gian cho ph�p ch�t tr� l�i trong: "..b)
	else
		SetTask(5881, 0)
		SetChatFlag(0)
		Msg2Player("�� cho ph�p nh�n v�t s� d�ng c�c t�n s� t�n g�u!")
	end
end

function bilCheckNapTheLogin()
	bilPhucLoi_CheckNapThe()
end

function bilFuncGetTaskTanThu()
	bilNvTanThu:GetTask()
end

function bilFuncCheckAffterOpenServer()
	bilCheckDuaTop:FuncMain()
end

function bilFuncCheckClient()
	bilVerifyClient:SendRequest2Client()
end

function bilFuncClientIP()
	bilClientIP:SendRequest2Client()
end


if login_add then login_add(bilLoginMsg2Player, 1) end
if login_add then login_add(bilSupportNewMember, 1) end
--if login_add then login_add(bilCheckNapTheLogin, 1) end
if login_add then login_add(bilFuncGetTaskTanThu, 1) end
if login_add then login_add(bilFuncCheckAffterOpenServer, 1) end
--if login_add then login_add(bilFuncCheckClient, 1) end
--if login_add then login_add(bilFuncClientIP, 1) end
if login_add then login_add(bilLoginMain_ChanelChat, 1) end





























