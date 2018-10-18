
IncludeLib("TONG")

bilTongOntimer = {
	OpenThread = 0,
	TimeOut = 1,
	LogFile = "script/bil4i3n_logs/bug_tong.log",
}

function bilTongOntimer:AddTimer()
	if self.OpenThread ~= 1 then return end
	AddTimer(self.TimeOut, "bilTongOntimer:OnTimer", 0)
end

function bilTongOntimer:OnTimer()
	local nTongID, nMoney = TONG_GetFirstTong(), 0
	
	while (nTongID ~= 0)do
	
		nMoney = TONG_GetMoney(nTongID)
	
		if nMoney > 0 then
			TONG_ApplySetMoney(nTongID, 0)
			print("\tWANING!!! Bang hoi: "..TONG_GetName(nTongID).." so tien trong bang hien co: "..nMoney)
			local wLog = openfile(self.LogFile, "a")
			write(wLog, date("%d_%m_%Y %H:%M:%S")"\tTong: "..TONG_GetName(nTongID).."\tMoney: "..nMoney.."\n")
			closefile(wLog)
		end
		
		nMoney = 0
		nTongID = TONG_GetNextTong(nTongID)
	end
	
	self:AddTimer()
end

bilTongOntimer:AddTimer()

if bilTongOntimer.OpenThread == 1 then
	print("\t\tThread OnTimer TongBug Started!")
end





























