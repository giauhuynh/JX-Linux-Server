IncludeLib("RELAYLADDER")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

-- Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")

bilCheckDuaTop = {
	bil_nLadderMsg = 10500,
	bil_nPlayerCamp = 5970,
	bil_nPlayerJoin = 5966,
	bil_nCampAffter = 6,
	bil_sImg = "<link=image:\\spr\\skill\\others\\title_dg.spr><link><color><color=orange>§ua TOP m¸y chñ míi: <color>",
	-- bil_sImg = "<link=image:\\spr\\skill\\others\\title_dg.spr><link><color><color=orange>Thö nghiÖm m¸y chñ míi: <color>",
}

function bilCheckDuaTop:FuncMain()
	if bilDenyAfterOpenTopRacing ~= 1 then
		return nil
	end
	local bil_1 = tonumber(bilDenyAfterOpenTopRacing_Year
		..bilDenyAfterOpenTopRacing_Month
		..bilDenyAfterOpenTopRacing_Day
		..bilDenyAfterOpenTopRacing_Hours
		..bilDenyAfterOpenTopRacing_Minute)
	local bil_2 = tonumber(date("%Y%m%d%H%M"))
	if bil_2 < bil_1 then
		if GetTask(self.bil_nPlayerJoin) <= 0 then
			SetTask(self.bil_nPlayerCamp, GetCamp())
		end
		
		SetTask(self.bil_nPlayerJoin, tonumber(date("%y%m%d")))
		
		if GetTask(5967) == 0 and bilNativePlace2ManualMap ~= 1 then
			SetTask(5967, 1)
			-- NewWorld(53, 1629, 3176)
		end
		
		SetCamp(self.bil_nCampAffter)
		SetCurCamp(0)
		self:Notify()
		
		-- Ladder_ClearLadder(self.bil_nLadderMsg)
		
		return bilDenyAfterOpenTopRacing
	else
		if GetTask(self.bil_nPlayerJoin) <= 0 then
			SetTask(self.bil_nPlayerJoin, tonumber(date("%y%m%d")))
		end
		
		if GetCamp() == self.bil_nCampAffter then
			SetCamp(GetTask(self.bil_nPlayerCamp))
			SetCurCamp(GetTask(self.bil_nPlayerCamp))
		end
		
		if ((bil_1 + 1) >= bil_2) then
				Msg2SubWorld(bil.C(9, "M¸y chñ míi ®· chÝnh thøc Open, quý nh©n sÜ vui lßng sö dông CÈm nang ®ång hµnh hoÆc ®Õn c¸c NPC cã liªn quan ®Ó kÝch ho¹t tr¹ng th¸i cho phÐp PK vµ ®¸nh qu¸i!"))
				
				AddLocalNews(bil.C(9, "M¸y chñ míi ®· chÝnh thøc Open, quý nh©n sÜ vui lßng sö dông CÈm nang ®ång hµnh hoÆc ®Õn c¸c NPC cã liªn quan ®Ó kÝch ho¹t tr¹ng th¸i cho phÐp PK vµ ®¸nh qu¸i!"))
				
				if bilAllowNvTanThu == 1 then
					Msg2SubWorld(bil.C(1, "HÖ thèng nhiÖm vô t©n thñ ®ang më, hoµn thµnh chuçi NV t©n thñ sÏ ®­îc th¨ng cÊp cùc nhanh vµ phÇn th­ëng trang bÞ."))
				end
				CastSkill(687,20)
				CastSkill(758,20)
				CastSkill(968,20)
				CastSkill(970,20)
				CastSkill(971,20)
				
		end
	end
	return nil
end

function bilCheckDuaTop_Notify_TestG()
	bilCheckDuaTop:FuncMain()
end

function bilCheckDuaTop:Notify()
	Msg2Player(bil.C(10, "HiÖn t¹i m¸y chñ míi ch­a Open nªn tr¹ng th¸i hiÖn t¹i cña quý nh©n sÜ lµ kh«ng thÓ Pk vµ ®¸nh qu¸i, ®Õn giê Open quý nh©n sÜ cã thÓ sö dông CÈm nang ®ång hµnh hoÆc NPC ®Ó kÝch ho¹t l¹i tr¹ng th¸i b×nh th­êng!"))
	
	CreateNewSayEx(self.bil_sImg.."HiÖn t¹i vÉn ch­a ®Õn giê Open <enter>m¸y chñ míi!<enter>Tr¹ng th¸i hiÖn t¹i lµ: "..bil.C(2, "Kh«ng thÓ PK, kh«ng thÓ ®¸nh  qu¸i.").."<enter>§Õn "..bil.C(1, bilDenyAfterOpenTopRacing_Hours).." giê - "..bil.C(1, bilDenyAfterOpenTopRacing_Minute).." phót b¹n cã thÓ sö dông cÈm nang ®ång hµnh hoÆc c¸c NPC cã liªn quan ®Ó nhËn l¹i tr¹ng th¸i b×nh th­êng!<enter>Thêi gian hiÖn t¹i lµ: "..bil.C(2,date("%H")).." giê "..bil.C(2, date("%M")).." phót "..bil.C(2, date("%S")).." gi©y.", {{"T¹i h¹ biÕt råi!", bil.OnCancel}})
end

































