Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function main()
	if CountFreeRoomByWH(1,1) < 1 then
		Msg2Player("B�n ph�i �� tr�ng �t nh�t 1 � h�nh trang m�i c� th� m� l� h�p!")
		return 1
	end
	local bil_tb_1 = {
		{bil_id = 4302, bil_name = "Ph�c L�i ��n [Th�n m�]", bil_ran = 90},
		{bil_id = 4303, bil_name = "Ph�c L�i ��n [H�ng �nh]", bil_ran = 100},
		{bil_id = 4304, bil_name = "Ph�c L�i ��n [Nhu t�nh]", bil_ran = 80},
		{bil_id = 4305, bil_name = "Ph�c L�i ��n [Hi�p c�t]", bil_ran = 70},
		{bil_id = 4306, bil_name = "Ph�c L�i ��n [��nh qu�c]", bil_ran = 50},
		{bil_id = 4307, bil_name = "Ph�c L�i ��n [An bang]", bil_ran = 30},
	}
	local bil_1 = getn(bil_tb_1)
	local bil_2, bil_3, bil_4 = bil.InitRandMemTb(bil_1), random(1,100), nil
	for bil_l_1 = 1, bil_1 do
		if bil_3 <= bil_tb_1[bil_2[bil_l_1]].bil_ran then
			bil_4 = AddItem(6,1,bil_tb_1[bil_2[bil_l_1]].bil_id, 1, 0,0,0)
			SetItemBindState(bil_4, -2)
			-- AutoStackItem(bil_4)
			Msg2Player(bil.C(10, "B�n nh�n ���c "..bil_tb_1[bil_2[bil_l_1]].bil_name))
			return 0
		end
	end
	return 0
end





























