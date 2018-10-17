Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

bilSongJinCheck = {
	bil_sImg = "<link=image:\\spr\\skill\\christmas\\star2.spr><link><color><color=orange>Anti Post: <color>",
	bil_tbTempIP = {},
}

function bilSongJinCheck:FuncCheckIP(bil_In_1)
	if bilAllowCheckIpBattleSongJin ~= 1 then 
		return nil 
	end
	
	local bil_2 = GetStringTask(7)
	
	if bilGetIPAdressWithProtocol == 1 then
		bil_2 = GetStringTask(7)
	else
		local bil_1 = GetIP()
		bil_2 = strsub(bil_1, 1, strfind(bil_1, ":") - 2)
	end
	local bil_3 = bil.Str2Byte(bil_2)
	local bil_4 = tonumber(date("%H"))
	if getn(self.bil_tbTempIP) > 0 then
		if bil.False(self.bil_tbTempIP[bil_4]) then
			self.bil_tbTempIP = {nil}
			self.bil_tbTempIP[bil_4] = {
				bilSong = {},
				bilJin = {}}
		end
	else
		self.bil_tbTempIP[bil_4] = {
			bilSong = {},
			bilJin = {}}
	end
	local bil_5, bil_6 = 0, {"Tèng", "Kim"}
	if bil.True(self.bil_tbTempIP[bil_4].bilSong[bil_3]) then
		bil_5 = 1
	elseif bil.True(self.bil_tbTempIP[bil_4].bilJin[bil_3]) then
		bil_5 = 2
	end
	if bil_5 ~= 0 and bil_5 ~= bil_In_1 then
		CreateNewSayEx(self.bil_sImg.."§Þa chØ IP cña b¹n: "..bil_2.."<enter>Ng­êi ®Çu tiªn tham gia chiÕn tr­êng cña ®Þa chØ IP<enter>trªn ®· chän phe "..bil.C(1, bil_6[bil_5])
			.." nªn b¹n kh«ng thÓ chän phe kh¸c<enter>vui lßng ®Õn ®iÓm b¸o danh phe "..bil.C(1, bil_6[bil_5]).." ®Ó tham gia chiÕn tr­êng!",
			{{"T¹i h¹ biÕt råi!", bil.OnCancel}})
		return 1
	end
	if bil_5 == 0 then
		if bil_In_1 == 1 then
			if bil.False(self.bil_tbTempIP[bil_4].bilSong[bil_3]) then
				self.bil_tbTempIP[bil_4].bilSong[bil_3] = bil_2
			end
		elseif bil_In_1 == 2 then
			if bil.False(self.bil_tbTempIP[bil_4].bilJin[bil_3]) then
				self.bil_tbTempIP[bil_4].bilJin[bil_3] = bil_2
			end
		end
	end
end


































