
Include("\\script\\task\\newtask\\newtask_head.lua") 
Include("\\script\\task\\tollgate\\messenger\\posthouse.lua") 
Include("\\script\\task\\tollgate\\messenger\\lib_messenger.lua") 
Include("\\script\\event\\birthday_jieri\\200905\\class.lua");

function messenger_gogogo()
	local Npcindex = GetLastDiagNpc()
	SetTaskTemp(180,Npcindex) 
	HideNpc(GetTaskTemp(180),540)  
	local Bil_ValueTask1202Old
	local Bil_NewValueTask1202
	local Bil_GetTeamSize = GetTeamSize()
	if Bil_GetTeamSize > 0 then
		return Bil_AddValue4TeamToaDo(Bil_GetTeamSize)
	else
		Bil_ValueTask1202Old = GetTask(1202)
		SetTask(1202, Bil_ValueTask1202Old + 1)
		Bil_NewValueTask1202 = GetTask(1202)
		-- AddOwnExp(5000)
		AddOwnExp(4000)
		Talk(1,"","B¹n ®· ®Õn ®­îc täa ®é, tæng täa ®é ®· ®¹t lµ:<color=yellow> "..Bil_NewValueTask1202.."<color>")
		Msg2Player("Tæng täa ®é ®· ®¹t ®­îc lµ: <color=yellow>"..Bil_NewValueTask1202.."<color>")
	end
end

function Bil_AddValue4TeamToaDo(Bil_GetTeamSize)
	local Bil_OldPlayerIdx = PlayerIndex
	for i = 1, Bil_GetTeamSize do
		PlayerIndex = GetTeamMember(i)
		SetTask(1202, GetTask(1202) + 1)
		Msg2Player("Tæng täa ®é ®· ®¹t ®­îc lµ: <color=yellow>"..GetTask(1202).."<color>")
		-- AddOwnExp(5000)
		AddOwnExp(4000)
	end
	PlayerIndex = Bil_OldPlayerIdx
end