Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function Fuc_Main_DL_MacSau()
	return bilNvTanThu:Npc_MacSau()
end

function Fuc_Main_DL_MacSau_Death()
	bilNvTanThu:CompleteMissionWithTeam(6, "§õng t­ëng cã thÓ ®¸nh b¹i ®­îc ta, nÕu kh«ng bÞ tróng ®éc th× kh«ng ai cã b¶n lÜnh ®Ó h¹ gôc ta!")
end