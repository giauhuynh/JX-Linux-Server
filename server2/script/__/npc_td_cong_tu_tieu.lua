Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function bil_Npc_CongTuTieu_Main()
	local name = GetName()  
	if (GetTask(5905) == 8) then
		bilNvTanThu:NextTask()
		CreateNewSayEx("<npc>"..name..": TiÕu C«ng Tö.<enter>"
				.."- Xin lçi! T¹i h¹ ph¶i ë bªn linh c÷u cña vong thª, bÊt luËn thÕ nµo chê qua tang kú h·y nãi. <enter>"
				.."- §õng qu¸ ®au buån, nh­ng chuyÖn nµy rÊt hÖ träng, nãi xong ta sÏ ®i ngay.<enter> Lêi ta nãi sÏ kh«ng thay ®æi, ng­¬i vÒ ®i! <enter>"
				.."- C«ng Tö! T¹i h¹ ®Õn ®©y v× Hoµng Kim L©n! <enter>Ha ha ha ha.......<enter>"
				.."- C«ng Tö......<enter> Hoµng Kim L©n, l¹i lµ Hoµng Kim L©n. ChÝnh v× nã mµ ta t¸n gia b¹i s¶n, th©n b¹i danh liÖt h­ thÕ nµy! <enter>"
				.."- C«ng Tö......<enter> Hoµng Kim L©n ta ®· ®­a cho thñ h¹ Giíi L­u Phong gi÷. Y ®ang ë tÇng 1 D­îc V­¬ng ®éng, nÕu cã thÓ ®¸nh th¾ng h¾n, Hoµng Kim L©n tïy ng­¬i lÊy. <enter>"
				.."- §a t¹ C«ng tö! Xin ®õng qu¸ ®au buån! <enter> B¹n trÎ! V× thø nµy mµ ta ph¶i mÊt ®i mét mg­êi th©n! Sau nµy ng­¬i sÏ hiÓu! <enter>",
				{{"T¹i h¹ biÕt råi, ®a ®¹ tiÕu c«ng tö", bil.OnCancel}})
	else 
		CreateNewSayEx("<npc>Giang hå tranh danh ®o¹t lîi. §Ó cã chót danh tiÕng ai còng ph¶i tr¶ mét c¸i gi¸. TiÕc thay c¸i gi¸ mµ ta ph¶i tr¶ chÝnh lµ vî cña ta! ¤i! ¸i thª ¬i...!",{{"KÕt thóc ®èi tho¹i", bil.OnCancel}})
	end
end	