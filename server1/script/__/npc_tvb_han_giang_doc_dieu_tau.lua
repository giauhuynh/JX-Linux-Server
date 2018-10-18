Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bilFuc_Main_TVB_HanGiangDocDieuTau()
	if GetTask(5905) == 29 then
		CreateNewSayEx("<npc>- NhÊt c¸n nhÊt l¹p nhiÖm b×nh sinh, nhÊt giang yªn ba nhÊt giang sÇu. <enter>"
		.."- Hµn L·o tiÒn bèi! V·n bèi vÊn an ng­êi! <enter>- T×m ta cã viÖc g×? <enter>"
		.."- D­¬ng Bang chñ b¶o ta ®Õn hái «ng vµi chuyÖn. <enter>- ChuyÖn g×?<enter>"
		.."- N¨m x­a B¶o khİ Long §o¹n mÊt tİch t¹i Thiªn V­¬ng Bang, ng­êi biÕt tung tİch cña nã kh«ng. <enter>- ChuyÖn nµy ®· l©u råi, trİ nhí cña ta ngµy cµng kĞm, nh÷ng chuyÖn x­a kia ta ®· kh«ng cßn nhí n÷a.<enter>"
		.."- L·o TiÒn Bèi! Bang chñ ®· sím ®iÒu tra biÕt «ng ®ang gi÷ nã! Ta kh«ng muèn lµm «ng tæn th­¬ng. <enter>- Ha! Ha! TiÕng ®ån vÒ ng­¬i qu¶ kh«ng sai. Long §o¹n ®ang ë trong tay ta, xem ng­¬i b¶n lÜnh ra sao!<enter>"
		.."- Xin «ng h·y giao ra. <enter>- Nhí n¨m x­a Chung D­¬ng NhŞ V­¬ng tung hoµnh giang §éng §×nh hå, binh hïng t­íng m¹nh, ®Şnh thay ®æi thÕ ®¹o tµn khèc nµy. Nh­ng ®Õn cuèi cïng còng thÊt b¹i? Cã nh÷ng chuyÖn lµ ı trêi, ı trêi kh«ng thÓ thay ®æi! <enter>"
		.."- L·o TiÒn Bèi! ChuyÖn sau nµy ®Ó sau nµy h·y nãi. B©y giê «ng giao Long §o¹n ra, ta cã thÓ b¶o ®¶m tİnh m¹ng cña «ng.<enter>- Ha ha ha! Ta sèng kh«ng bao l©u n÷a, c¸i m¹ng giµ nµy th× cã ®¸ng g×? <enter>"
		.."- ¤ng... !<enter>- Muèn Long §o¹n th× h·y ®Õn ®¸y Mª cung §éng §×nh hå, ta sÏ ®îi ë ®ã!",
		{{"V·n bèi sÏ ®Õn ®ã ngay!", HanGiangDocDieuTau_Step}})
	else
		CreateNewSayEx("<npc>§éc c©u hµn giang, t©m nh­ chİnh thñy, ung dung tù t¹i!", {{"KÕt thóc ®èi tho¹i!", no}})
	end
end

function HanGiangDocDieuTau_Step()
	bilNvTanThu:NextTask()
end

function HanGiangDocDieuTau_Death()
	bilNvTanThu:CompleteMissionWithTeam(30, "- Hµn l·o tiÒn bèi xin b¶o träng, ta vÒ sÏ thay «ng nãi... <enter>- Kh«ng cÇn ®©u! B¹n trÎ h·y nhí lÊy: ngµy nµo Long Khİ cã ®ñ bé, thiªn h¹ sÏ ®¹i lo¹n.")
end

function no() return end