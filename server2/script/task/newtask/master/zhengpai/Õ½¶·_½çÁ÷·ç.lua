-------------------------------------------------------------------------
-- FileName		:	Õ½¶·_½çÁ÷·ç.lua
-- Author		:	xiaoyang
-- CreateTime	:	2004-12-15 14:29:59
-- Desc			:	½çÁ÷·ç
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")
Include("\\script\\__\\npc_dvd_1_gioi_luu_phong.lua")

function OnDeath()
-- Uworld1001 = nt_getTask(1001)
	-- if (Uworld1001 == 100 ) then
		-- AddOwnExp(50000)
		-- Msg2Player("B¹n lÊy ®­îc Hoµng Kim L©n.")
		-- Msg2Player("B¹n cã thÓ vÒ §¹i Lý gÆp M¹c SÇu.")
		-- SetMemberTask(1001, 100, 110, newtask2)
	-- end
	bil_Func_Main_GioiLuuPhong_Death()
end

function newtask2()
	Talk(1, "", "Hoµng Kim L©n ë ®©y! Ng­¬i cÇm ®i! Thø nµy h¹i c¶ ®êi C«ng tö ta! §©y lµ ma vËt, ng­¬i h·y cÈn thËn!")
end
