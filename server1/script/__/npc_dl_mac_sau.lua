Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

function Fuc_Main_DL_MacSau()
	return bilNvTanThu:Npc_MacSau()
end

function Fuc_Main_DL_MacSau_Death()
	bilNvTanThu:CompleteMissionWithTeam(6, "��ng t��ng c� th� ��nh b�i ���c ta, n�u kh�ng b� tr�ng ��c th� kh�ng ai c� b�n l�nh �� h� g�c ta!")
end