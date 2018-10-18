IncludeLib("SETTING")
Include("\\script\\global\\bil4i3n\\bil4i3n_translife.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function main()
	local bil_1 = {
		[0] = {1220},
		[1] = {1221},
		[2] = {1223},
		[3] = {1222},
		[4] = {1224},
		[5] = {1225},
		[6] = {1227},
		[7] = {1226},
		[8] = {1228},
		[9] = {1229},
	}
	local bil_2 = GetLastFactionNumber()
	if bil_2 == -1 then
		Say("<color=orange>Tu Ch�n ��n<color>: Ch�a gia nh�p m�n ph�i, l�m g� c� k� n�ng 180 m� luy�n?", 0)
		return 1
	elseif GetLevel() < 150 then
		Say("<color=orange>Tu Ch�n ��n<color>: Ch�a ��t ��ng c�p 150, kh�ng th� luy�n ���c k� n�ng c�p 180!", 0)
		return 1
	elseif HaveMagic(bil_1[bil_2][1]) == -1 then
		Say("<color=orange>Tu Ch�n ��n<color>: K� n�ng 180 ch�a h�c, kh�ng th� ti�n h�nh luy�n k� n�ng!", 0)
		return 1
	elseif GetCurrentMagicLevel(bil_1[bil_2][1], 0) >= 20 then
		-- if ST_GetTransLifeCount() > 0 then
			-- if GetCurrentMagicLevel(bil_1[bil_2][1], 0) >= bilTbTransLife[ST_GetTransLifeCount()].bil_tb_4 + 20 then
				-- Say("<color=orange>Tu Ch�n ��n<color>: K� n�ng c�p 180 "..bil.C(2, GetSkillName(bil_1[bil_2][1])).." c�a c�c h� �� ��t t�i c�nh gi�i cho ph�p, h�y ti�n h�nh tr�ng sinh �� t�ng th�m gi�i h�n!", 0)
				-- return 1
			-- end
		-- else
			Say("<color=orange>Tu Ch�n ��n<color>: K� n�ng c�p 180 "..bil.C(2, GetSkillName(bil_1[bil_2][1])).." c�a c�c h� �� ��t t�i c�nh gi�i cho ph�p, h�y ti�n h�nh tr�ng sinh �� t�ng th�m gi�i h�n!", 0)
			return 1
		-- end
	end
	local bil_3 = random(500,1000)
	AddSkillExp(bil_1[bil_2][1], bil_3, 1)
	local bil_4_1 = GetSkillNextExp(bil_1[bil_2][1])
	local bil_4_2 = GetSkillExp(bil_1[bil_2][1])
	if bil_4_2 == 0 then
		Msg2Player(bil.C(2, "K� n�ng: ")..bil.C(1, GetSkillName(bil_1[bil_2][1])).." m�c �� luy�n n�ng l�n: "..bil.C(4, "1 - c�p"))
	else
		Msg2Player(bil.C(2, "K� n�ng: ")..bil.C(1, GetSkillName(bil_1[bil_2][1])).." m�c �� luy�n n�ng l�n: "..bil.C(4, floor(bil_4_2/(bil_4_1/100)).."%"))
	end
	return 0
end






















