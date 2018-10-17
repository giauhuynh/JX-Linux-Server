Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bilFuc_Main_TL_DaiSuKhongTich()
	if GetTask(5905) == 32 then
		CreateNewSayEx("<npc>- A Di §µ PhËt!  Thİ chñ s¸t khİ qu¸ nÆng. <enter>"
		.."- Suèt ngµy chØ biÕt chĞm giÕt, ®­¬ng nhiªn s¸t khİ nÆng råi! <enter>- T¹o nhiÒu nghiÖp ¸c, Thİ chñ ngµy sau sÏ bŞ ®µy xuèng ®Şa ngôc A Tú,  khæ ¶i v« biªn, quay ®Çu lµ bê. <enter>"
		.."- Ta kh«ng thÓ quay l¹i ®­îc n÷a. <enter> ChØ cÇn bá ®­îc lµ cã thÓ quay ®Çu. <enter>"
		.."- Ta g¹t ®­îc m×nh, kh«ng g¹t ®­îc v¹n d©n. <enter> Bå T¸t sÏ phô hé cho kÓ thiÖn t©m! A Di §µ PhËt! <enter>"
		.."- ThÇn T¨ng! §¹o bÊt ®ång bÊt t­¬ng vi m­u, xin giao hai bé ThÇn khİ mµ quİ tù ®ang gi÷. <enter> H·y ra c¸nh rõng ë hËu s¬n ThiÕu L©m, BÇn T¨ng thä gi¸o vµi chiªu sÏ nãi! <enter>"
		,{{"V·n bèi sÏ ®Õn ®ã ngay!", DaiSuKhongTich_Step}})
	else
		CreateNewSayEx("<npc>Nh©n qu¶ trªn ®êi ®· ®Şnh s½n. A Di §µ PhËt!!", {{"KÕt thóc ®èi tho¹i!", no}})
	end
end

function DaiSuKhongTich_Step()
	bilNvTanThu:NextTask()
end

function DaiSuKhongTich_Death()
	bilNvTanThu:CompleteMissionWithTeam(33, "A Di §µ PhËt, ThÇn Khİ ë ®©y, Thİ chñ lÊy ®i.")
end

function no() return end