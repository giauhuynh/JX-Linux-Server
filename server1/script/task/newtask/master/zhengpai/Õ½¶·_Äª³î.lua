--Ī��Ů
--by xiaoyang (2004\12\15)
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")
Include("\\script\\__\\npc_dl_mac_sau.lua")

function OnDeath()
	Fuc_Main_DL_MacSau_Death()
-- Uworld1001 = nt_getTask(1001)
	-- if (Uworld1001 == 30) then
		-- AddOwnExp(30000)
		-- Msg2Player("M�c S�u b�o b�n v� th�nh n�i chuy�n")
		-- SetMemberTask(1001,30,40,newtask1) --����3end
	-- end
end

function newtask1()
	Talk(1,"","��ng t��ng ng��i ��nh ng�t ���c ta, n�u ta kh�ng tr�ng ��c th� ng��i ��u ph�i l� ��i th�. V� th�nh r�i n�i chuy�n!")
end
		
