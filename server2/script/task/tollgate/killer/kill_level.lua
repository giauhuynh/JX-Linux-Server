-------------------------------------------------------------------------
-- FileName		:	kill_level.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-03-31 10:56:14
-- Desc			:	bossɱ��������������ű�
-------------------------------------------------------------------------
IncludeLib("RELAYLADDER");	--���а�
IncludeLib("ITEM")
IncludeLib("NPCINFO")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\tollgate\\killer\\lib_killlevel.lua")
Include( "\\script\\task\\tollgate\\killbosshead.lua" )
Include("\\script\\event\\change_destiny\\mission.lua");	-- �������
Include( "\\script\\tong\\contribution_entry.lua" )

Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")
Include("\\script\\_event\\activitys.lua")

-- TSKID_KILLERDATE	= 1192;	--������ʱ������
-- TSKID_KILLERMAXCOUNT	= 1193;	--ÿ��ɱ�˴���


function OnDeath( nNpcIndex )
local Uworld1082 = nt_getTask(TSKID_KILLTASKID)

	if ( Uworld1082 >= 1 ) and ( Uworld1082 <= 160 ) then

		kill_level20(nNpcIndex)
	end
end
 
-----------------------------------------------------------------------

--������ɱ��boss����ҷ������ı��������
function kill_level20(nNpcIndex)
	local Uworld1082 = nt_getTask(TSKID_KILLTASKID);
	local nNpcSign = GetNpcParam( nNpcIndex, 1 );
	local nseries = NPCINFO_GetSeries(nNpcIndex)
	local Uworld1217 = nt_getTask(1217)	
	if( Uworld1082 == nNpcSign ) then
		
		nt_setTask(1217,Uworld1217+1);
		
		-- ����������ɴ�������
		Ladder_NewLadder(10119, GetName(),Uworld1217+1,1);
		
		if ( Uworld1082 >= 1 and Uworld1082 <= 20 ) then
			ITEM_DropRateItem(nNpcIndex, 8,"\\settings\\droprate\\boss\\bosstask_lev20.ini", 0, 4, nseries);
		end
		if ( Uworld1082 >= 21 and Uworld1082 <= 40 ) then
			ITEM_DropRateItem(nNpcIndex, 8,"\\settings\\droprate\\boss\\bosstask_lev30.ini", 0, 5, nseries);
		end
		if ( Uworld1082 >= 41 and Uworld1082 <= 60 ) then
			ITEM_DropRateItem(nNpcIndex, 8,"\\settings\\droprate\\boss\\bosstask_lev40.ini", 0, 6, nseries);
		end
		if ( Uworld1082 >= 61 and Uworld1082 <= 80 ) then
			ITEM_DropRateItem(nNpcIndex, 8,"\\settings\\droprate\\boss\\bosstask_lev50.ini", 0, 7, nseries);
		end
		if ( Uworld1082 >= 81 and Uworld1082 <= 100 ) then
			ITEM_DropRateItem(nNpcIndex, 8,"\\settings\\droprate\\boss\\bosstask_lev60.ini", 0, 8, nseries);
		end
		if ( Uworld1082 >= 101 and Uworld1082 <= 120 ) then
			ITEM_DropRateItem(nNpcIndex, 8,"\\settings\\droprate\\boss\\bosstask_lev70.ini", 0, 9, nseries);
		end
		if ( Uworld1082 >= 121 and Uworld1082 <= 140 ) then
			ITEM_DropRateItem(nNpcIndex, 8,"\\settings\\droprate\\boss\\bosstask_lev80.ini", 0, 10, nseries);
		end
		if ( Uworld1082 >= 141 and Uworld1082 <= 160 ) then
			tbChangeDestiny:completeMission_Killer();	-- �������
			ITEM_DropRateItem(nNpcIndex, 8,"\\settings\\droprate\\boss\\bosstask_lev90.ini", 0, 10, nseries);
		end		
		G_ACTIVITY:OnMessage("FinishKillerBoss", PlayerIndex, TSKID_KILLTASKID, Uworld1082, 0)
		SetMemberTask(TSKID_KILLTASKID,Uworld1082,0,killbossall, nseries)
	end
end

-----------------------------------------------------------------------

function killbossall()
	AddSkillState(541,1,0,402)
	Msg2Player("B�n �� thu ph�c ���c t�n s�t th�, ho�n th�nh nhi�m v�!")
	_EVENT:Activity_BST()
	if GetTask(5905) == 66 then
		bilNvTanThu:NextTask()
	end
end