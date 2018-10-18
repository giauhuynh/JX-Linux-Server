--Äª³îÅ®
--by xiaoyang (2004\12\15)
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")
Include("\\script\\__\\npc_dl_mac_sau.lua")

function OnDeath()
	Fuc_Main_DL_MacSau_Death()
-- Uworld1001 = nt_getTask(1001)
	-- if (Uworld1001 == 30) then
		-- AddOwnExp(30000)
		-- Msg2Player("M¹c SÇu b¶o b¹n vÒ thµnh nãi chuyÖn")
		-- SetMemberTask(1001,30,40,newtask1) --»·½Ú3end
	-- end
end

function newtask1()
	Talk(1,"","§õng t­ëng ng­¬i ®¸nh ngÊt ®­îc ta, nÕu ta kh«ng tróng ®éc th× ng­¬i ®©u ph¶i lµ ®èi thñ. VÒ thµnh råi nãi chuyÖn!")
end
		
