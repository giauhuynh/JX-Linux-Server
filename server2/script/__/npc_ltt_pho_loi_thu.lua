Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function Fuc_Main_LTT_PhoLoiThu()
	if GetTask(5905) == 44 then
		if Pay(10000) == 1 then
			bilNvTanThu:Npc_Msg({44}, "Khô! Khô!....L¹i ®Õn t×m l·o cã viÖc g×?")
		else
			Msg2Player("Phã L«i Th­ yªu cÇu 1 v¹n l­îng míi cã thÓ cung cÊp tin tøc!")
			return CreateNewSayEx("<npc>-Khô! Khô!....L¹i ®Õn t×m l·o cã viÖc g×?<enter>- ThÕ......¤ng xem nhiªu ®©y tiÒn cã ®ñ kh«ng?<enter>- Tin tøc c¬ b¶n cña ta ®¸ng gi¸ 1 v¹n l­îng b¹c, ng­¬i nghÌo ®Õn thÕ sao!", {{"§­îc råi, ®îi tin cña ta!", bil.OnCancel}})
		end
	elseif GetTask(5905) == 46 then
		return bilNvTanThu:Npc_Msg({46}, "Khô! Khô!....L¹i ®Õn t×m l·o cã viÖc g×?")
	elseif GetTask(5905) == 50 then
		return bilNvTanThu:Npc_Msg({50}, "Khô! Khô!....L¹i ®Õn t×m l·o cã viÖc g×?")
	else
		return CreateNewSayEx("<npc>Khô! Khô!....L¹i ®Õn t×m l·o cã viÖc g×?", {{"KÕt thóc ®èi tho¹i!", bil.OnCancel}})
	end
end
