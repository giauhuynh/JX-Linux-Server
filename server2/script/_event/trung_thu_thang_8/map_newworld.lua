Include("\\script\\_event\\trung_thu_thang_8\\t_hao_tuu_tuong_phung.lua")

function t_HaoTuuTuongPhung:LeaveWorld()
	local a = GetName()
	local oldPIdx = PlayerIndex
	local c_w, c_x, c_y = GetWorldPos()

	if not(self.Player[a]) or self.Player[a].MapW ~= c_w then
		return
	end
	
	if self.Player[a] then
		self.Player[a].State = 0
		
		Msg2Player("<color=fire>B¹n rêi khái b¶n ®å, b¹n vµ c¸c thµnh viªn kh¸c sÏ kh«ng cßn nhËn ®­îc ®iÓm th­ëng tõ bµn tiÖc!")
		
		local b = GetTeamSize()
		
		if b > 1 then
			for _i = 1, b do
				PlayerIndex = GetTeamMember(_i)
				
				if PlayerIndex ~= oldPIdx then
					Msg2Player("<color=fire>§éi tr­ëng ®· rêi b¶n ®å, bµn tiÖc buéc ph¶i dõng l¹i!")
				end
			end
			
			PlayerIndex = oldPIdx
		end
	end
end

function t_HaoTuuTuongPhung:NewWorld()
	local a = GetName()
	local c_w, c_x, c_y = GetWorldPos()
	
	if not(self.Player[a]) or self.Player[a].MapW ~= c_w then
		return
	end
	
	if self.Player[a] then
		return Msg2Player("<color=yellow>Bµn tiÖc cña b¹n ë ("..floor(self.Player[a].MapX/8)..", "..floor(self.Player[a].MapY/16)..") h·y mau chãng ®Õn ®ã vµ kÝch ho¹t l¹i bµn tiÖc!")
	end
end

function OnNewWorld()
	return t_HaoTuuTuongPhung:NewWorld()
end

function OnLeaveWorld()
	return t_HaoTuuTuongPhung:LeaveWorld()
end





































