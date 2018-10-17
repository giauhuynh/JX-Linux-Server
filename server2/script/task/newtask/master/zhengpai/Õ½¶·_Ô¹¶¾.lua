-------------------------------------------------------------------------
-- FileName		:	’Ω∂∑_‘π∂æ.lua
-- Author		:	xiaoyang
-- CreateTime	:	2004-12-15 14:34:32
-- Desc			:	‘π∂æ
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")
Include("\\script\\__\\npc_htd_oan_doci.lua")

function OnDeath()
-- Uworld1001 = nt_getTask(1001)
	-- if (Uworld1001 == 240 ) then
		-- AddOwnExp(230000)
		-- Msg2Player("Bπn l y Æ≠Óc thÒ c p O∏n ßÈc.")
		-- Msg2Player("Bπn c„ th” v“ L©m An g∆p Mπnh Phµm.")
		-- SetMemberTask(1001,240,250,newtask4)
	-- end
	bil_Func_Main_HTD_OanDoc_Death()
end

function newtask4()
	Talk(1,"","ßÍi ng≠Íi ai cÚng mÈt l«n ch’t! Nh≠ng ch’t nh≠ th’ nµy thÀt kh´ng cam t©m!")
end

	
