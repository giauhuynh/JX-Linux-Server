
function main(iIndex)
	local a = {
		[2266] = {2669, "B�ch Ni�n Tr�n L�", 2, "h�i qu� Huy Ho�ng - S� c�p s� nh�n ���c 1 B�ch Ni�n Huy Ho�ng Qu�", {10, 79}},
		-- [2267] = {2670, "Thi�n Ni�n Tr�n L�", 3, "h�i qu� Huy Ho�ng - Trung c�p s� nh�n ���c 1 Thi�n Ni�n Huy Ho�ng Qu�", {80, 109}},
		[2267] = {2670, "Thi�n Ni�n Tr�n L�", 3, "h�i qu� Huy Ho�ng - Trung c�p s� nh�n ���c 1 Thi�n Ni�n Huy Ho�ng Qu�", {80, 200}},
		[2268] = {2671, "V�n Ni�n Tr�n L�", 4, "h�i qu� Huy Ho�ng - Cao c�p s� nh�n ���c 1 V�n Ni�n Huy Ho�ng Qu�", {110, 200}},
	}
	
	local b_G, b_D, b_P, _, _ = GetItemProp(iIndex)
	
	if not(a[b_P]) or b_G ~= 6 then
		Msg2Player("Kh�ng x�c ��nh ���c ��o c�, xin th� l�i ho�c li�n h� v�i b� ph�n h� tr�!")
		return 1
	end	
	
	if GetLevel() < a[b_P][5][1] or GetLevel() > a[b_P][5][2] then
		Msg2Player(a[b_P][2].." ch� s� d�ng cho nh�n v�t t� c�p "..a[b_P][5][1].." ��n c�p "..a[b_P][5][2])
		return 1
	end
	
	local nDate = tonumber(GetLocalDate("%m%d"))
	
	SetTask(a[b_P][1], 1)
	SetTask(2312, nDate)
	
	Talk(1, "", "�� nh�n tr�ng th�i "..a[b_P][2]..". Tr�ng th�i n�y s� m�t khi h�i ���c qu�, ho�c ��n 0h00 c�ng ng�y!")
	return 0
end



































