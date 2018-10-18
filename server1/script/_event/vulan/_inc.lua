
function bilEventIsActive()
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	if nCurDate <= 20160831 then return 1 else return nil end
end