-- ====================== ÎÄ¼şĞÅÏ¢ ======================

-- ½£ÏÀÇéÔµÍøÂç°æÔ½ÄÏ°æ - ÅÖºÀÖíËÀÍö½Å±¾
-- ÎÄ¼şÃû¡¡£ºhaozhu_death.lua
-- ´´½¨Õß¡¡£º×Ó·Çô~
-- ´´½¨Ê±¼ä£º2009-05-31 10:58:17
-- Modified by bil4i3n

-- ======================================================

Include("\\script\\task\\task_addplayerexp.lua");	-- ÓÃÓÚµş¼Ó¾­Ñé
Include("\\script\\event\\birthday_jieri\\200905\\class.lua");	-- 
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_award_activity.lua")
IncludeLib("RELAYLADDER");
Include("\\script\\_event\\activitys.lua")

function OnDeath( nNpcIndex )
	_EVENT:Activity_NBP()

	local bilNowDay = tonumber(date("%y%m%d"))
	if Bil_GetTask(25) < bilNowDay and Bil_GetTask(25) ~= 0 then
		Bil_SetTask(22, 0)
	end
	if (Bil_GetTask(22) >= 10) then
		Msg2Player("H«m nay ®· s¨n b¾t 10 Nhİm bĞo ph× råi, ngµy mai h·y ®Õn l¹i nhĞ.");
		return
	end
	-- local x, y, nMapIndex = GetNpcPos(nNpcIndex);
	bilActivity_DeathNhimBeoPhi()
	Bil_SetTask(25, tonumber(date("%y%m%d")))
	Bil_SetTask(22, Bil_GetTask(22) + 1)
	Bil_SetTask(24, Bil_GetTask(24) + 1)
	Ladder_NewLadder(10232, GetName(), Bil_GetTask(24),1);
end

function OnTimer(nNpcIndex, nTimeOut)
	DelNpc(nNpcIndex)
end
