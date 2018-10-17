Include("\\script\\task\\task_addplayerexp.lua")

iBanhDacBiet = {
	i = {
		[4348] = {n = "B�nh Trung Thu ��c Bi�t - T�nh B�ng H�u", er = {10000000, 15000000}},
		[4349] = {n = "B�nh Trung Thu ��c Bi�t - Tr�ng Tr�n H�nh Ph�c", s = {451, 20, 1,(72*60*60*18)}},
	}
}

function iBanhDacBiet:Main(ItemIndex, bIsExpired)
	local a_G, a_D, a_P, a_L, a_S = GetItemProp(ItemIndex)
	local c = nil
	
	if not(self.i[a_P]) or a_G ~= 6 then
		return Talk(1, "", "Kh�ng nh�n d�ng ���c v�t ph�m, xin vui l�ng th� l�i ho�c li�n h� v�i b� ph�n h� tr� �� ���c tr� gi�p!")
	end
	
	if a_P == 4349 then
		if GetLevel() >= 89 then
			return Talk(1, "", "Lo�i b�nh ��c bi�t n�y ch� ph�t huy c�ng n�ng tr�n c�c nh�n v�t t� c�p 89 tr� xu�ng, b�n th�n �� l� cao th�, sao l�i so �o v�i b�c h�u b�i?")
		end
		
		c = 5868
	elseif a_P == 4348 then		
		c = 5869
	end
	
	local b = GetTask(c)
	
	if b ~= 1 and b ~= 2 then
		return Talk(1, "", "B�nh n�y kh�ng ph�i c�a b�n, kh�ng th� s� d�ng!")
	end
	
	if b >= 2 then
		return Talk(1, "", "B�n �� s� d�ng "..self.i[a_P].n.." r�i, l�m d�ng nhi�u s� �nh h��ng kh�ng t�t ��n n�i c�ng!")
	end
	
	if GetSkillState(451) == 1 then
		return Talk(1, "", "Hi�u �ng c�a b�nh trung thu ��c bi�t hi�n v�n c�n, kh�ng th� s� d�ng!")
	end
	
	SetTask(c, 2)
	
	ConsumeEquiproomItem(1,a_G, a_D, a_P,-1)
	
	if self.i[a_P].s and getn(self.i[a_P].s) > 0 then
		AddSkillState(unpack(self.i[a_P].s))
	end
	
	if self.i[a_P].er and getn(self.i[a_P].er) > 0 then
		tl_addPlayerExp(random(self.i[a_P].er[1], self.i[a_P].er[2]))
	end
	
	return Msg2Player("<color=yellow>S� d�ng th�nh c�ng: "..self.i[a_P].n)
end






























