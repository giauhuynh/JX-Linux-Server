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
		
		Msg2Player("<color=fire>B�n r�i kh�i b�n ��, b�n v� c�c th�nh vi�n kh�c s� kh�ng c�n nh�n ���c �i�m th��ng t� b�n ti�c!")
		
		local b = GetTeamSize()
		
		if b > 1 then
			for _i = 1, b do
				PlayerIndex = GetTeamMember(_i)
				
				if PlayerIndex ~= oldPIdx then
					Msg2Player("<color=fire>��i tr��ng �� r�i b�n ��, b�n ti�c bu�c ph�i d�ng l�i!")
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
		return Msg2Player("<color=yellow>B�n ti�c c�a b�n � ("..floor(self.Player[a].MapX/8)..", "..floor(self.Player[a].MapY/16)..") h�y mau ch�ng ��n �� v� k�ch ho�t l�i b�n ti�c!")
	end
end

function OnNewWorld()
	return t_HaoTuuTuongPhung:NewWorld()
end

function OnLeaveWorld()
	return t_HaoTuuTuongPhung:LeaveWorld()
end





































