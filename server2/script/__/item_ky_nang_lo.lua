Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function main()
	if GetSkillState(750) == 1 then 
		CreateNewSayEx("<link=image:\\spr\\item\\script\\zhenlu_avd2.spr><link><color>V� ��i hi�p v�n c�n hi�u �ng c�a K� N�ng L�, kh�ng th� s� d�ng nhi�u c�i c�ng l�c!", {{"Ta bi�t r�i!", bil.OnCancel}})
		return 1
	else
		Msg2Player(bil.C(10, "Nh�n ���c hi�u �ng nh�n ��i kinh nghi�m k� n�ng trong 1 gi�!"))
		AddSkillState(750, 1, 1, 64800, 1);
		return 0
	end
end
































