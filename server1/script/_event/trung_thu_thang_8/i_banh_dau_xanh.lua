Include("\\script\\_event\\lib.lua")

iBanhDauXanh = {
	a = {
		tRandom = 10000,
		EventID = 2,
		Item = {
			{v = {20,1}, r = 8, n = "Phóc duyªn", s = {{509, 1, 0, 500}}},
			{v = {20,2}, r = 6, n = "Phóc duyªn", s = {{509, 1, 0, 500}}},
			{v = {20,3}, r = 4, n = "Phóc duyªn", s = {{509, 1, 0, 500}}},
			{v = {20,4}, r = 2, n = "Phóc duyªn", s = {{509, 1, 0, 500}}},
			{v = {20,5}, r = 1, n = "Phóc duyªn", s = {{509, 1, 0, 500}}},
			{v = {21,1}, r = 10, n = "Danh väng", s = {{509, 1, 0, 500}}},
			{v = {21,2}, r = 9, n = "Danh väng", s = {{509, 1, 0, 500}}},
			{v = {21,3}, r = 8, n = "Danh väng", s = {{509, 1, 0, 500}}},
			{v = {21,4}, r = 7, n = "Danh väng", s = {{509, 1, 0, 500}}},
			{v = {21,5}, r = 6, n = "Danh väng", s = {{509, 1, 0, 500}}},
			{v = {21,6}, r = 5, n = "Danh väng", s = {{509, 1, 0, 500}}},
			{v = {21,7}, r = 4, n = "Danh väng", s = {{509, 1, 0, 500}}},
			{v = {21,8}, r = 3, n = "Danh väng", s = {{509, 1, 0, 500}}},
			{v = {21,9}, r = 2, n = "Danh väng", s = {{509, 1, 0, 500}}},
			{v = {21,10}, r = 1, n = "Danh väng", s = {{509, 1, 0, 500}}},
		}
	}
}

function iBanhDauXanh:Main(ItemIndex, bIsExpired)
	local a = {
		MaxItem = 600,
		TaskCount = 5871,
		ExpPerOne = 450000,
		Name = "B¸nh Trung thu §Ëu xanh",
		ConsumeOne = ItemIndex,
	}
	
	if _EVENT_LIB:isMax(a) then
		return
	end
	
	_EVENT_LIB:RandomItem(self.a)
end






























