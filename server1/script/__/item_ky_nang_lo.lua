Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function main()
	if GetSkillState(750) == 1 then 
		CreateNewSayEx("<link=image:\\spr\\item\\script\\zhenlu_avd2.spr><link><color>VŞ ®¹i hiÖp vÉn cßn hiÖu øng cña Kü N¨ng Lé, kh«ng thÓ sö dông nhiÒu c¸i cïng lóc!", {{"Ta biÕt råi!", bil.OnCancel}})
		return 1
	else
		Msg2Player(bil.C(10, "NhËn ®­îc hiÖu øng nh©n ®«i kinh nghiÖm kü n¨ng trong 1 giê!"))
		AddSkillState(750, 1, 1, 64800, 1);
		return 0
	end
end
































