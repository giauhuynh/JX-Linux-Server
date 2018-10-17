Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

_bilTbAddSkillFactionManual = {
	[1] = {
		{"Thiªn V­¬ng Bang", 70},
		{"ThiÕu L©m Ph¸i", 70},
	},
	[2] = {
		{"§­êng M«n Ph¸i", 70},
		{"Ngò §éc Gi¸o", 70},
	},
	[3] = {
		{"Nga My Ph¸i", 70},
		{"Thóy Yªn M«n", 70},
	},
	[4] = {
		{"C¸i Bang Ph¸i", 70},
		{"Thiªn NhÉn Gi¸o", 70},
	},
	[5] = {
		{"Vâ §ang Ph¸i", 70},
		{"C«n L«n Ph¸i", 70},
	},
}

function main()
	if GetLastFactionNumber() == -1 then
		local bilSeriesPl = GetSeries()
		local bilTbSayOp = {}
		for i = 1, 2 do
			tinsert(bilTbSayOp, _bilTbAddSkillFactionManual[bilSeriesPl + 1][i][1].."/#bilJoin2TheFaction_Ok("..bilSeriesPl..", "..i..")")
		end
		tinsert(bilTbSayOp, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
		return Say(bil.C(4, "Sø gi¶ m«n ph¸i: ").."Ta lµ sø gi¶ cña thËp ®¹i m«n ph¸i næi danh trªn giang hå, ®­îc sù tİn nhiÖm cña ch­ëng m«n c¸c m«n ph¸i ta cã thÓ ®Æc c¸ch cho vŞ thiÕu hiÖp ®©y gia nhËp m«n ph¸i bÊt kú, vŞ thiÕu hiÖp muèn gia nhËp m«n ph¸i nµo!", getn(bilTbSayOp), bilTbSayOp)
	else
		return Talk(1, "", bil.C(4, "Sø gi¶ m«n ph¸i: ").."VŞ thiÕp hiÖp ®· lµ ng­êi cña danh m«n chİnh ph¸i, nÕu muèn vÒ ®Şa bµn cña bæn m«n cã thÓ vÒ 8 t©n thñ th«n gÆp c¸c ®Ö tö cña m«n ph¸i vµ nhê hä ®­a vÒ m«n ph¸i!")
	end
end

function bilJoin2TheFaction_Ok(bilSeries, bilFac)
	local bilSeries = bilSeries + 1
	if bilSeries == 1 then
		if bilFac == 1 then
			SetFaction("tianwang")       	
			SetCamp(3)
			SetCurCamp(3)
			SetLastFactionNumber(1)
			add_tw(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan nghªnh b¹n gia nhËp Thiªn V­¬ng bang!")
			Msg2Faction(GetFaction(),GetName().." tõ h«m nay gia nhËp Thiªn V­¬ng bang, xin b¸i kiÕn c¸c vŞ huynh ®Ö! Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
		elseif bilFac == 2 then
			SetFaction("shaolin")   
			SetCamp(1)
			SetCurCamp(1)
			SetLastFactionNumber(0)
			add_sl(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan nghªnh b¹n gia nhËp ThiÕu L©m!")
			Msg2Faction("shaolin",GetName().." tõ h«m nay gia nhËp ThiÕu l©m, xin b¸i kiÕn c¸c vŞ huynh ®Ö! Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
		end
	elseif bilSeries == 2 then
		if bilFac == 1 then
			SetFaction("tangmen")
			SetCamp(3)
			SetCurCamp(3)
			SetLastFactionNumber(2)
			add_tm(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan nghªnh b¹n gia nhËp §­êng m«n!")
			Msg2Faction("tangmen",GetName().." tõ h«m nay gia nhËp §­êng M«n, xin b¸i kiÕn c¸c vŞ huynh tû. Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
		elseif bilFac == 2 then
			SetFaction("wudu") 
			SetCamp(2)
			SetCurCamp(2)
			SetLastFactionNumber(3)
			add_wu(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan nghªnh b¹n Gia nhËp Ngò §éc gi¸o!")
			Msg2Faction("wudu",GetName().." tõ h«m nay gia nhËp Ngò §éc gi¸o, xin b¸i kiÕn c¸c vŞ huynh tû. Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
		end
	elseif bilSeries == 3 then
		if bilFac == 1 then
			SetFaction("emei")       	
			SetCamp(1)
			SetCurCamp(1)
			SetLastFactionNumber(4)
			add_em(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan nghªnh b¹n gia nhËp Nga Mi ph¸i!")
			Msg2Faction("emei",GetName().." tõ h«m nay gia nhËp Nga Mi ph¸i. Xin b¸i kiÕn c¸c vŞ s­ tû. Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
		elseif bilFac == 2 then
			add_cy(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			SetFaction("cuiyan")  
			SetCamp(3)
			SetCurCamp(3)
			SetLastFactionNumber(5)
			Msg2Player("Hoan nghªnh b¹n gia nhËp Thóy Yªn m«n!")
			Msg2Faction("cuiyan",GetName().." tõ h«m nay gia nhËp Thóy Yªn m«n. Xin b¸i kiÕn c¸c vŞ s­ tû. Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
		end
	elseif bilSeries == 4 then
		if bilFac == 1 then
			SetFaction("gaibang")   
			SetCamp(1)
			SetCurCamp(1)
			SetLastFactionNumber(6)
			add_gb(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan nghªnh b¹n gia nhËp C¸i bang!")
			Msg2Faction("gaibang",GetName().." Tõ h«m nay gia nhËp C¸i bang! Xin b¸i kiÕn c¸c vŞ s­ huynh s­ tû! Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
		elseif bilFac == 2 then
			SetFaction("tianren")      
			SetCamp(2)
			SetCurCamp(2)
			SetLastFactionNumber(7)
			Msg2Player("Gia nhËp Thiªn NhÉn gi¸o!")
			Msg2Faction("tianren",GetName().." tõ h«m nay gia nhËp Thiªn NhÉn gi¸o! Xin b¸i kiÕn c¸c vŞ ®¹o huynh s­ tû! Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
			add_tr(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
		end
	elseif bilSeries == 5 then
		if bilFac == 1 then
			SetFaction("wudang")    
			SetCamp(1)
			SetCurCamp(1)
			SetLastFactionNumber(8)
			add_wd(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan nghªn b¹n gia nhËp Vâ §ang ph¸i!")
			Msg2Faction("wudang",GetName().." tõ h«m nay gia nhËp Vâ §ang ph¸i, tr­íc tiªn ®Õn b¸i kiÕn c¸c vŞ s­ huynh, s­ tû!",GetName())
		elseif bilFac == 2 then
			SetFaction("kunlun")      		
			SetCamp(3)
			SetCurCamp(3)
			SetLastFactionNumber(9)
			add_kl(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan nghªnh b¹n gia nhËp C«n L«n ph¸i!")
			Msg2Faction("kunlun",GetName().." tõ h«m nay gia nhËp C«n L«n ph¸i! Xin b¸i kiÕn c¸c vŞ ®¹o huynh s­ tû! Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
		end
	end
end
