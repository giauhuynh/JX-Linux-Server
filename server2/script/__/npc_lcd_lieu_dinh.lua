Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bilFuc_Main_LCD_LieuDinh_Death()
	if GetTask(5905) == 58 then
		Msg2Player("<color=orange>Thiªn Hoµng Long KhÝ mµ ng­¬i muèn t×m...mét khi tËp hîp ®ñ cã thÓ gióp §¹i Tèng ®o¹t l¹i giang s¬n, còng cã thÓ gióp §¹i Kim x©m chiÕm ®¹i giang nam b¾c, b¸ t¸nh sinh linh ®å th¸n!")
	end
	bilNvTanThu:CompleteMissionWithTeam(58, "- Ch¼ng ngê ta......cuèi cïng chÕt d­íi tay ng­êi Tèng! - Liªu t­íng qu©n, ta víi ng­¬i vèn kh«ng thï kh«ng o¸n, nh­ng v× thñ cÊp ng­¬i cã thÓ gióp ta cã ®­îc mãn ®å ®ang cÇn. - B¹n trÎ......Lêi cña bän Kim kh«ng ®¸ng tin......")
end