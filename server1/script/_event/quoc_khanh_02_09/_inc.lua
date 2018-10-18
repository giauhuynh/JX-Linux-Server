function bilEventIsActive()
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	if nCurDate <= 20180910 then return 1 else return nil end
end