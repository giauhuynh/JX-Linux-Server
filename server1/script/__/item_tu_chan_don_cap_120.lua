IncludeLib("SETTING")
Include("\\script\\global\\bil4i3n\\bil4i3n_translife.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function main()
	local bil_1 = {
		[0] = {709},
		[1] = {708},
		[2] = {710},
		[3] = {711},
		[4] = {712},
		[5] = {713},
		[6] = {714},
		[7] = {715},
		[8] = {716},
		[9] = {717},
	}
	local bil_2 = GetLastFactionNumber()
	if bil_2 == -1 then
		Say("<color=orange>Tu Ch©n §¬n<color>: Ch­a gia nhËp m«n ph¸i, lµm g× cã kü n¨ng 120 mµ luyÖn?", 0)
		return 1
	elseif GetLevel() < 120 then
		Say("<color=orange>Tu Ch©n §¬n<color>: Ch­a ®¹t ®¼ng cÊp 120, kh«ng thÓ luyÖn ®­îc kü n¨ng cÊp 120!", 0)
		return 1
	elseif HaveMagic(bil_1[bil_2][1]) == -1 then
		Say("<color=orange>Tu Ch©n §¬n<color>: Kü n¨ng 120 ch­a häc, kh«ng thÓ tiÕn hµnh luyÖn kü n¨ng!", 0)
		return 1
	elseif GetCurrentMagicLevel(bil_1[bil_2][1], 0) >= 20 then
		-- if ST_GetTransLifeCount() > 0 then
			-- if GetCurrentMagicLevel(bil_1[bil_2][1], 0) >= bilTbTransLife[ST_GetTransLifeCount()].bil_tb_4 + 20 then
				-- Say("<color=orange>Tu Ch©n §¬n<color>: Kü n¨ng cÊp 120 "..bil.C(2, GetSkillName(bil_1[bil_2][1])).." cña c¸c h¹ ®· ®¹t tíi c¶nh giíi cho phÐp, h·y tiÕn hµnh trïng sinh ®Ó t¨ng thªm giíi h¹n!", 0)
				-- return 1
			-- end
		-- else
			Say("<color=orange>Tu Ch©n §¬n<color>: Kü n¨ng cÊp 120 "..bil.C(2, GetSkillName(bil_1[bil_2][1])).." cña c¸c h¹ ®· ®¹t tíi c¶nh giíi cho phÐp, h·y tiÕn hµnh trïng sinh ®Ó t¨ng thªm giíi h¹n!", 0)
			return 1
		-- end
	end
	local bil_3 = random(5000000,8000000)
	AddSkillExp(bil_1[bil_2][1], bil_3, 1)
	local bil_4_1 = GetSkillNextExp(bil_1[bil_2][1])
	local bil_4_2 = GetSkillExp(bil_1[bil_2][1])
	if bil_4_2 == 0 then
		Msg2Player(bil.C(2, "Kü n¨ng: ")..bil.C(1, GetSkillName(bil_1[bil_2][1])).." møc ®é luyÖn n©ng lªn: "..bil.C(4, "1 - cÊp"))
	else
		Msg2Player(bil.C(2, "Kü n¨ng: ")..bil.C(1, GetSkillName(bil_1[bil_2][1])).." møc ®é luyÖn n©ng lªn: "..bil.C(4, floor(bil_4_2/(bil_4_1/100)).."%"))
	end
	return 0
end






















