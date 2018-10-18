IL("TIMER")
IncludeLib("RELAYLADDER")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

bilVerifyClient = {
	bil_sCodeVerify = "VerifyClient_7tghhs92haegr",
}

function bilVerifyClient:CallFuncMain(bil_In_1, bil_In_2)
	if bilAllowVerifyClient == 0 then return end
	if SearchPlayer(bil_In_1) <= 0 then
		return print("Khong lay duoc PlayerIndex: "..bil_In_1)
	end
	if bil_In_2 == self.bil_sCodeVerify then
		SetTaskTemp(255, 255255255)
		return TM_StopTimer(116)
	end
	return self:Notify(bil_In_1)
end

function bilVerifyClient:SendRequest2Client()
	if bilAllowVerifyClient == 0 then return end
	SetTaskTemp(255, GetTaskTemp(255) + 1)
	local bil_nHandle = OB_Create()
	ObjBuffer:PushByType(bil_nHandle, OBJTYPE_STRING, "NONE")
	ObjBuffer:PushByType(bil_nHandle, OBJTYPE_STRING, "NONE")
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_VERIFY_CLIENT", bil_nHandle)
	OB_Release(bil_nHandle)
	TM_SetTimer( 3 * 18,116,1,0);
end

function bilVerifyClient:Notify(bil_In_1, bil_In_2)
	if bilAllowVerifyClient == 0 then return end
	if bil_In_2 then
		local bil_1, bil_2 = SearchPlayer(bil_In_1), PlayerIndex
		if bil_1 <= 0 then return end
		print("")
		PlayerIndex = bil_1
		local bil_3 = {GetAccount(), bil_In_1, "0.0.0.0"} 
		print(">> [[BIL-VERIFY-CLIENT]] Account: "..bil_3[1].." Nhan vat: << "..bil_3[2].." >> IP: "..bil_3[3])
		self:WriteLogsAdmin(bil_3)
		OfflineLive(PlayerIndex)
		KickOutSelf()
		-- print("")
		-- PlayerIndex = bil_2
	else
		TM_SetTimer( 3 * 18,116,1,0);
		return CreateNewSayEx("<link=image:\\spr\\skill\\����\\sl_06_ʨ�Ӻ�.spr><link><color><color=orange>Verify Client: <color>H� th�ng x�c nh�n patch game �� ph�t hi�n <color=yellow>b�n �ang s� d�ng phi�n b�n c�<color>, b�n vui l�ng kh�i ch�y game Autoupdate ho�c t�i patch m�i t� trang ch� �� tham gia tr� ch�i!<enter><enter>H� th�ng s� t� ��ng ��y b�n ra kh�i tr� ch�i!", {{"T�i h� bi�t r�i!", self.Notify, {self, bil_In_1, 2}}})
	end
end

function bilVerifyClient:WriteLogsAdmin(bil_In_1)
	if bilAllowVerifyClient == 0 then return end
	local bil_1, bil_2, bil_3, bil_4 = {10490, 10499, 0}, {"", 0, 10490, 0}, tonumber(date("%m%d%H%M")), nil
	for bil_l_1 = bil_1[1], bil_1[2] do
		if bil_1[3] > 0 then break end
		for bil_l_2 = 1, 10 do
			bil_2[1], bil_2[2] = Ladder_GetLadderInfo(bil_l_1, bil_l_2)
			if bil.False(bil_2[1]) or bil.False(bil_2[2]) then
				bil_1[3] = bil_1[3] + 1
				bil_2[3] = bil_l_1
				break
			elseif bil_2[1] == bil_In_1[1] then
				bil_2[3] = bil_l_1
				bil_2[4] = bil_2[2]
				bil_1[3] = bil_1[3] + 1
				break
			elseif bil_l_1 == bil_1[2] and bil_l_2 == 10 then
				bil_1[3] = bil_1[3] + 1
				bil_2[3] = bil_1[1]
			end
		end
	end
	if bil.False(bil_2[4]) or strlen(bil_2[4]) ~= 9 then
		bil_4 = 1
	else
		bil_4 = tonumber(strsub(bil_2[4], 9, strlen(bil_2[4]))) + 1
	end
	Ladder_NewLadder(bil_2[3], bil_In_1[1], tonumber(bil_3..bil_4), 1)
	
	local bil_Logs_2 = openfile("script/global/bil4i3n/bil4i3n_log/bil_Verify_Client.log", "a")
	write(bil_Logs_2, date("%H:%M:%S %d-%m-%y").."\tAccount: "..bil_In_1[1].."\tPlayerName: "..bil_In_1[2].."\tIP: "..bil_In_1[3].."\n")
	closefile(bil_Logs_2)
end

function OnTimer()
	if bilAllowVerifyClient == 0 then return end
	if GetTaskTemp(255) <= 1 then
		Msg2Player(bil.C(4, "VerifyClient: ")..bil.C(8, "M�y ch� ch�a nh�n ���c ph�n h�i, ti�n h�nh ki�m tra l�i..."))
		return bilVerifyClient:SendRequest2Client()
	elseif GetTaskTemp(255) == 3 then
		return bilVerifyClient:Notify(GetName(), 2)
	elseif GetTaskTemp(255) == 255255255 then
		return TM_StopTimer(116)
	end
	SetTaskTemp(255, GetTaskTemp(255) + 1)
	return bilVerifyClient:Notify(GetName())
end
























