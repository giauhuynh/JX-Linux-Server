Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

local bil_tb_1 = {
	[4302] = {5918, "Th�n m�"},
	[4303] = {5916, "H�ng �nh"},
	[4304] = {5914, "Nhu t�nh"},
	[4305] = {5912, "Hi�p c�t"},
	[4306] = {5910, "��nh qu�c"},
	[4307] = {5908, "An bang"},
}

function main(bil_1)
	local bil_2_G, bil_2_D, bil_2_P, bil_2_L, bil_2_S = GetItemProp(bil_1)
	if not(%bil_tb_1[bil_2_P]) or bil_2_G ~= 6 or bil_2_D ~= 1 then
		Msg2Player(bil.C(10, "H� th�ng kh�ng x�c minh ���c v�t ph�m, vui l�ng li�n h� v�i GM"))
		return 1
	end
	local bil_3 = random(50, 100)
	SetTask(%bil_tb_1[bil_2_P][1], GetTask(%bil_tb_1[bil_2_P][1]) + bil_3)
	Msg2Player(bil.C(10, "Ng�u nhi�n nh�n ���c "..bil_3.." �i�m t�ch l�y ph�c l�i "..%bil_tb_1[bil_2_P][2]..". T�ng t�ch l�y t� Ph�c l�i ��n ["..%bil_tb_1[bil_2_P][2].."] l�: "..GetTask(%bil_tb_1[bil_2_P][1])))
	return 0
end
























