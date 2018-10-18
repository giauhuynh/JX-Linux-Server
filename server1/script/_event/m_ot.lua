Include("\\script\\_event\\init.lua")

_EVENT.Mission = {
	ID_m = 1111111,
	Interval = 1 * 60 * 18,
	Debug = false,
}

function _EVENT:Mission_OnTimer()
	self.Mission.ID_m = AddTimer(self.Mission.Interval, "_EVENT:Mission_OnTimer", self.Mission.ID_m)
	
	local a = self:NowDay()
	local a_H, a_M = tonumber(GetLocalDate("%H")), tonumber(GetLocalDate("%M"))
	local a_HM = tonumber(a_H..((a_M < 10) and "0"..a_M or a_M))
	local c_S, c_E = nil, nil
	
	if self.Mission.Debug then
		print("Timer: "..self.Mission.ID_m.." :: NowDay "..a.." :: a_H "..a_H.." :: a_M "..((a_M < 10) and "0"..a_M or a_M))
	end
	
	if self.mis[a_H] then
		if self.Mission.Debug then print("self.mis["..a_H.."] is True") end
	
		for _i = 1, getn(self.mis[a_H]) do
			if self.Mission.Debug then print("( "..self.mis[a_H][_i].StartAnyTime.."==1 ) ::OR:: ( "..a..">="..self.mis[a_H][_i].StartEnd[1].." ::AND:: "..a.."<="..self.mis[a_H][_i].StartEnd[2].." )") end
			
			c_S = tonumber(self.mis[a_H][_i].StartHourMin[1]..((self.mis[a_H][_i].StartHourMin[2] < 10) and "0"..self.mis[a_H][_i].StartHourMin[2] or self.mis[a_H][_i].StartHourMin[2]))
			c_E = tonumber(self.mis[a_H][_i].StartHourMin[3][1]..((self.mis[a_H][_i].StartHourMin[3][2] < 10) and "0"..self.mis[a_H][_i].StartHourMin[3][2] or self.mis[a_H][_i].StartHourMin[3][2]))
			
			if ((self.mis[a_H][_i].StartAnyTime == 1) or (a >= self.mis[a_H][_i].StartEnd[1] and a <= self.mis[a_H][_i].StartEnd[2])) then
				if self.Mission.Debug then print("( "..(self.mis[a_H][_i].StartHourMin[4] and self.mis[a_H][_i].StartHourMin[4] or "not").." : NOT | 0 : ) ::AND:: ( "..a_HM..">="..c_S.." ::AND:: "..a_HM.."<"..c_E.." )") end

				if ((not(self.mis[a_H][_i].StartHourMin[4]) or self.mis[a_H][_i].StartHourMin[4] == 0) and (a_HM >= c_S) and a_HM < c_E) then
					self.mis[a_H][_i].StartHourMin[4] = 1
					
					local b_1, b_2, b_3, b_c = nil, nil, nil, 0
					
					b_1 = self.g[self.mis[a_H][_i].eID]["f"]
					b_2 = self.mis[a_H][_i].FileFunc[1]
					b_3 = self.mis[a_H][_i].FileFunc[2]
					
					if not(b_1) or not(b_2) or not(b_3) then b_c = 1 end
					if (type(b_1) ~= "string") or (type(b_2) ~= "string") or (type(b_3) ~= "string") then b_c = 1 end
					if (strlen(b_1) <= 0) or (strlen(b_2) <= 0) or (strlen(b_3) <= 0) then b_c = 1 end
					
					if b_c ~= 0 then
						return print("\t[ CORE EVENT ] !!! WARNING !!! Mission "..self.mis[a_H][_i].FileFunc[2].." eID "..self.mis[a_H][_i].eID.." - "..self.g[self.mis[a_H][_i].eID]["m"].." Couldn't started !!! Please check again.")
					end
					
					DynamicExecute("\\script\\_event\\"..b_1.."\\"..b_2, b_3)
					print("\t[ CORE EVENT ] Start Mission: "..self.mis[a_H][_i].FileFunc[2].."  ::  "..self.mis[a_H][_i].eID.." :: "..self.g[self.mis[a_H][_i].eID]["m"])
				end
			end
		
			if self.mis[a_H][_i].StartHourMin[4] and self.mis[a_H][_i].StartHourMin[4] == 1 and (a_HM < c_S or a_HM >= c_E) then
				self.mis[a_H][_i].StartHourMin[4] = 0
			end
		end
	end
	
end



































