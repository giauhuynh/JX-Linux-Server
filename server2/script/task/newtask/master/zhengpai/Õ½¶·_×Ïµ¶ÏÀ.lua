-------------------------------------------------------------------------
-- FileName		:	’Ω∂∑_◊œµ∂œ¿.lua
-- Author		:	xiaoyang
-- CreateTime	:	2004-12-15 14:35:34
-- Desc			:	◊œµ∂œ¿
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")
Include("\\script\\__\\npc_dtd3_ta_dao_hiep.lua")

function OnDeath()
	-- Uworld1001 = nt_getTask(1001)
	-- if ( Uworld1001 == 170 ) then
		-- AddOwnExp(100000)
		-- Msg2Player("Bπn Æ∑ l y Æ≠Óc Cˆu Hi÷n Chi Chÿ, quay v“ ßπi L˝ g∆p Mπc S«u phÙc m÷nh.")
		-- SetMemberTask(1001,170,180,newtask3)
	-- end
	bil_Func_Main_TaDaoHiep_Death()
end

function newtask3()
	Talk(1,"","Ta bπi d≠Ìi tay ng≠¨i, Æ∑ phÙ lﬂng huynh Æ÷ ph„ th∏c. Chÿ c„ th” l y c∏i ch’t Æ” b∏o Æ∏p, ng≠¨i Æ∑ l y Æ≠Óc n„ rÂi, h∑y bi’n Æi.")
end
