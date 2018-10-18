-------------------------------------------------------------------------
-- FileName		:	messenger_losetask.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-07 17:33:14
-- Desc			:	ÐÅÊ¹ÈÎÎñÖÐËùÓÐÍæ¼ÒÊ§°ÜËùµ÷ÓÃµÄ½Å±¾
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --µ÷ÓÃ nt_getTask Í¬²½±äÁ¿µ½¿Í»§¶ËµÄÀà

function losemessengertask()
	
	local _, _, nMapIndex = GetPos()
	
	if (nt_getTask(1203) == 21 or  nt_getTask(1203) == 20 ) then
		nt_setTask(1201,0)
		nt_setTask(1202,0)
		nt_setTask(1203,0)
		nt_setTask(1204,0)
		nt_setTask(1207,0)
		-- nt_setTask(1212,0)
		nt_setTask(1213,0)
		nt_setTask(1214,0)
		nt_setTask(1215,0)
		
		Msg2Player("NhiÖm vô tÝn sø cña b¹n ®· thÊt b¹i!")
	end
	
	local MapId = SubWorldIdx2ID( nMapIndex )
	if ( MapId >= 387  and MapId <= 395) then
		DisabledUseTownP(0)
		SetFightState(0)
		SetPunish(1);
		SetCreateTeam(1);
		SetPKFlag(0)
		ForbidChangePK(0);
		SetDeathScript("");
	end
		
	nt_setTask(1211,0)
	local MapId = SubWorldIdx2ID( nMapIndex )
	if ( MapId >= 387  and MapId <= 389 ) then
		SetPos(1563,3118);
	elseif ( MapId >= 390  and MapId <= 392 ) then
		SetPos(1337,3154);
	elseif ( MapId >= 393  and MapId <= 395 ) then
		SetPos(1414,3197);
	end
end


