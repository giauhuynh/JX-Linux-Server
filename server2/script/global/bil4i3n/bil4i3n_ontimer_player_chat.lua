IL("TIMER")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

bilPlayerAutoChat = {
	bil_sImg = "<link=image:\\spr\\skill\\christmas\\star2.spr><link><color>",
	bil_tbTask = {
		{bil_1 = 5900, bil_2 = "M«n ph¸i"},
		{bil_1 = 5901, bil_2 = "Bang héi"},
		{bil_1 = 5902, bil_2 = "ThÕ giíi"},
		{bil_1 = 5903, bil_2 = "Thµnh thÞ"},
		{bil_1 = 5904, bil_2 = "Phô cËn"},
	},
	bil_nIdTaskGlobal = 4999,
	bil_nIdTaskString = {10, 9, 8},
	bil_sNullString = "HÖ thèng tù ®éng rao kªnh chat, më CÈm Nang §ång Hµnh ®Ó tiÕn hµnh cÊu h×nh!",
	bil_nTaskTemp_OpenTimer = 254,
	bil_nTaskTemp_Loops = 253,
	bil_tbSendCode = {
		{bil_nTaskTemp = 252, bil_sCode = "CH_FACTION", bil_nNeedTime = 20, bil_nRestoreMana = 0},
		{bil_nTaskTemp = 251, bil_sCode = "CH_TONG", bil_nNeedTime = 10, bil_nRestoreMana = 0},
		{bil_nTaskTemp = 250, bil_sCode = "CH_WORLD", bil_nNeedTime = 120, bil_nRestoreMana = 0},
		{bil_nTaskTemp = 249, bil_sCode = "CH_CITY", bil_nNeedTime = 40, bil_nRestoreMana = 0},
		{bil_nTaskTemp = 248, bil_sCode = "CH_NEARBY", bil_nNeedTime = 2, bil_nRestoreMana = 0},
	},
	-- bil_nTimeLoopsTimer = 60,
	bil_nTimeLoopsTimer = 31,
}

function bilPlayerAutoChat:Main(bil_In_1, bil_In_2)
	if bilAllowOnTimerAutoChat == 0 then 
		return CreateNewSayEx(self.bil_sImg.."TÝnh n¨ng Tù ®éng rao b¸n trªn hÖ thèng kªnh hiÖn ®ang ®ãng, quý nh©n sÜ vui lßng thö l¹i sau!", {{"Ta biÕt råi!", bil.OnCancel}})
	end
	if bil_In_2 then
		return AskClientForString("bilPlayerAutoChat_LoiRao", "", 1, 80, "Lêi rao kªnh CHAT");
	end
	if bil_In_1 then
		if GetTask(self.bil_tbTask[bil_In_1].bil_1) ~= 0 then
			SetTask(self.bil_tbTask[bil_In_1].bil_1, 0)
		else
			SetTask(self.bil_tbTask[bil_In_1].bil_1, 1)
		end
	end
	local bil_1, bil_2 = self.bil_sImg, {{"ThiÕt lËp lêi rao cho tÊt c¶ c¸c kªnh.", self.Main, {self, 0, 1}}}
	if bil.False(GetStringTask(self.bil_nIdTaskString[1])) then
		bil_1 = bil_1.."Lêi Rao: <color=red>< B¹n ch­a thiÕt lËp lêi rao! ><color><enter><enter>"
	else
		bil_1 = bil_1.."Lêi Rao: <color=white>"..GetStringTask(self.bil_nIdTaskString[1])..GetStringTask(self.bil_nIdTaskString[2])..GetStringTask(self.bil_nIdTaskString[3]).."<color><enter><enter>"
	end
	for bil_l_1 = 1, getn(self.bil_tbTask) do
		if GetTask(self.bil_tbTask[bil_l_1].bil_1) ~= 0 then
			bil_1 = bil_1.."§ang <color=green>BËt <pic=135><color> hÖ thèng rao kªnh "..self.bil_tbTask[bil_l_1].bil_2.."<enter>"
			tinsert(bil_2, {"T¾t tù ®éng rao kªnh "..self.bil_tbTask[bil_l_1].bil_2, self.Main, {self, bil_l_1}})
		else
			bil_1 = bil_1.."§ang <color=orange>T¾t <pic=137><color> hÖ thèng rao kªnh "..self.bil_tbTask[bil_l_1].bil_2.."<enter>"
			tinsert(bil_2, {"BËt tù ®éng rao kªnh "..self.bil_tbTask[bil_l_1].bil_2, self.Main, {self, bil_l_1}})
		end
	end
	tinsert(bil_2, {"§· thiÕt lËp xong!", self.SetUpAuto, {self}})
	return CreateNewSayEx(bil_1, bil_2)
end

function bilPlayerAutoChat_LoiRao(bil_In_1)
	if bilAllowOnTimerAutoChat == 0 then return end
	local bil_1 = strlen(bil_In_1)
	if bil_1 > 30 then
		SetStringTask(bilPlayerAutoChat.bil_nIdTaskString[1], strsub(bil_In_1, 1, 30))
		if bil_1 > 60 then
			SetStringTask(bilPlayerAutoChat.bil_nIdTaskString[2], strsub(bil_In_1, 31, 60))
			if bil_1 > 80 then
				SetStringTask(bilPlayerAutoChat.bil_nIdTaskString[3], strsub(bil_In_1, 61, 80))
			else
				SetStringTask(bilPlayerAutoChat.bil_nIdTaskString[3], strsub(bil_In_1, 61, bil_1))
			end
		else
			SetStringTask(bilPlayerAutoChat.bil_nIdTaskString[2], strsub(bil_In_1, 31, bil_1))
			SetStringTask(bilPlayerAutoChat.bil_nIdTaskString[3], "")
		end
	else
		SetStringTask(bilPlayerAutoChat.bil_nIdTaskString[1], bil_In_1)
		SetStringTask(bilPlayerAutoChat.bil_nIdTaskString[2], "")
		SetStringTask(bilPlayerAutoChat.bil_nIdTaskString[3], "")
	end
	return bilPlayerAutoChat:Main()
end

function bilPlayerAutoChat:SendData2Client()
	if bilAllowOnTimerAutoChat == 0 then return end
	local bil_1 = GetTaskTemp(self.bil_nTaskTemp_Loops)
	local bil_2_1, bil_2_2, bil_3, bil_4 = self.bil_tbSendCode, getn(self.bil_tbSendCode), 0, self.bil_sNullString
	if bil.True(GetStringTask(self.bil_nIdTaskString[1])) then
		bil_4 = GetStringTask(self.bil_nIdTaskString[1])..GetStringTask(self.bil_nIdTaskString[2])..GetStringTask(self.bil_nIdTaskString[3])
	end
	for bil_l_1 = 1, bil_2_2 do
		if GetTask(self.bil_tbTask[bil_l_1].bil_1) ~= 0 then
			bil_3 = GetTaskTemp(bil_2_1[bil_l_1].bil_nTaskTemp)
			if (bil_3 * bil_2_1[bil_l_1].bil_nNeedTime) <= (bil_1 * self.bil_nTimeLoopsTimer) then
				if bil_2_1[bil_l_1].bil_nRestoreMana == 1 then
					RestoreMana()
				end
				local bil_nHandle = OB_Create()
				ObjBuffer:PushByType(bil_nHandle, OBJTYPE_STRING, bil_2_1[bil_l_1].bil_sCode)
				ObjBuffer:PushByType(bil_nHandle, OBJTYPE_STRING, bil_4)
				ScriptProtocol:SendData("emSCRIPT_PROTOCOL_AUTO_CHAT", bil_nHandle)
				OB_Release(bil_nHandle)
				SetTaskTemp(bil_2_1[bil_l_1].bil_nTaskTemp, bil_3 + 1)
			end
		end
	end
	SetTaskTemp(self.bil_nTaskTemp_Loops, bil_1 + 1)
end

function bilPlayerAutoChat:SetUpAuto()
	if bilAllowOnTimerAutoChat == 0 then return end
	local bil_1 = 0
	for bil_l_1 = 1, getn(self.bil_tbTask) do
		if GetTask(self.bil_tbTask[bil_l_1].bil_1) ~= 0 then
			bil_1 = bil_1 + 1
		end
	end
	if bil_1 == 0 then
		if GetTaskTemp(self.bil_nTaskTemp_OpenTimer) ~= 0 then
			TM_StopTimer(117)
			SetTaskTemp(self.bil_nTaskTemp_OpenTimer, 0)
			SetGlbValue(self.bil_nIdTaskGlobal, GetGlbValue(self.bil_nIdTaskGlobal) - 1)
		end
	else
		if GetTaskTemp(self.bil_nTaskTemp_OpenTimer) == 0 then
			self:SendData2Client()
			TM_SetTimer(self.bil_nTimeLoopsTimer * 18,117,1,0)
			SetTaskTemp(self.bil_nTaskTemp_OpenTimer, self.bil_nTaskTemp_OpenTimer)
			SetGlbValue(self.bil_nIdTaskGlobal, GetGlbValue(self.bil_nIdTaskGlobal) + 1)
		end
	end
	return Msg2Player(bil.C(10, "§· thiÕt lËp Auto rao kªnh chat!"))
end

function OnTimer()
	if bilAllowOnTimerAutoChat == 0 then return end
	local bil_1 = 0
	for bil_l_1 = 1, getn(bilPlayerAutoChat.bil_tbTask) do
		if GetTask(bilPlayerAutoChat.bil_tbTask[bil_l_1].bil_1) ~= 0 then
			bil_1 = bil_1 + 1
		end
	end
	if bil_1 == 0 then
		if GetTaskTemp(bilPlayerAutoChat.bil_nTaskTemp_OpenTimer) ~= 0 then
			TM_StopTimer(117)
			SetTaskTemp(bilPlayerAutoChat.bil_nTaskTemp_OpenTimer, 0)
			SetGlbValue(bilPlayerAutoChat.bil_nIdTaskGlobal, GetGlbValue(bilPlayerAutoChat.bil_nIdTaskGlobal) - 1)
		end
	else
		bilPlayerAutoChat:SendData2Client()
		TM_SetTimer(bilPlayerAutoChat.bil_nTimeLoopsTimer * 18,117,1,0)
	end
end

function bilCallFunc_AutoChat()
	return bilPlayerAutoChat:Main()
end





















