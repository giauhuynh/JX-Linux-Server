-- �ļ�������matchmaker.lua
-- �����ߡ���zhongchaolong
-- ����ʱ�䣺2008-01-22 15:11:22
--ÿ������n����λ9λ��¼��������λ��¼���ڣ� ��������ֱ��n=n+1
Include("\\script\\event\\valentine2008\\head.lua")
Include("\\script\\event\\valentine2008\\lib\\addaward.lua")
Include("\\script\\lib\\pay.lua")
function IsPickable( nItemIndex, nPlayerIndex )
	--ʱ��
	if not valentine2008_isGetItemPeriod() then
		Msg2Player(format("�<color=yellow>%s<color>�Ѿ����������ܵõ�ʲô�����ˡ�",valentine2008_szActName))
		return 0;
	end
	if check_valentine2008_team() ~= 1 then
		Msg2Player("ֻ����һ��һŮ��Ӳ��������Ի���")
		return 0;
	end
	local nTeamSize = GetTeamSize()
	local i
	for i=1, nTeamSize do
		if valentine2008_PlayerDo(GetTeamMember(i), valentine2008_PlayerLimit) == 0 then
			Msg2Team("�����������������ϲ��ܵõ��¹ⱦ�С�")
			return 0;
		end
	end
	return 1;
end

function PickUp( nItemIndex, nPlayerIndex )
	if( IsMyItem( nItemIndex ) ) then
		local i
		local nCollectExpLimit = GetTask(TSK_valentine2008_CollectExpLimit)
		--ʰȡ���˵õ�
		local tbExp = 
		{
			{nExp = 10000, nRate = 30},
			{nExp = 40000, nRate = 40},
			{nExp = 70000, nRate = 30},
		}
		if nCollectExpLimit < TSKV_valentine2008_CollectExpLimit then
			local nCurSelect = valentine2008_lib_AddAwardByRate(tbExp, valentine2008_szActName)
			nCollectExpLimit = nCollectExpLimit + tbExp[nCurSelect].nExp
			SetTask(TSK_valentine2008_CollectExpLimit, nCollectExpLimit)
		else
			Msg2Player(format("�����¹ⱦ�еõ��ľ����%d�����˱��λ���ޡ�", nCollectExpLimit))
		end
		--����õ�
		local nTeamSize = GetTeamSize()
		for i=1, nTeamSize do
			valentine2008_PlayerDo(GetTeamMember(i), valentine2008_GetYueGuangBaoHe);
		end	
		return 0;	-- ɾ����Ʒ
	end
end

--ĳ����ִ��ĳ������
function valentine2008_PlayerDo(nPlayerIdx,fun,...)
	local nOldPlayer = PlayerIndex;
	PlayerIndex = nPlayerIdx
	local re = call(fun, arg);
	PlayerIndex = nOldPlayer;
	return re
end

--����Ƿ�2����Ů����

function check_valentine2008_team()
	if (GetTeamSize() == 2) then		-- ��ӡ�����Ϊ2��
		Player1_ID = GetTeamMember(1)
		Player2_ID = GetTeamMember(2)
		if ( (valentine2008_PlayerDo(Player1_ID,GetSex) + valentine2008_PlayerDo(Player2_ID,GetSex) ) ~= 1) then --��Ů���11 10 00 ���Ϊ1˵�������Զ���
			return 0
		end
		return 1
	end
	return 0
end
--�����йص���������
function valentine2008_PlayerLimit()
	local nDate			= tonumber(GetLocalDate("%y%m%d"));
	local nMaxCount		= GetTask(TSK_valentine2008_CollectMaxLimit)
	local nCollectLimit	= GetTask(TSK_valentine2008_CollectLimit)
	--�ȼ�
	if (IsCharged() == 0 or GetLevel() < 100) then
		
		Msg2Team(format("%s����100�����ϵĳ�ֵ��ҡ�", GetName()))
		return 0;
	end
	
	--���ʰȡ����
	if(nMaxCount  >= TSKV_valentine2008_CollectMaxLimit) then
		Msg2Team(format("%s����¹ⱦ�д�%d�����Ѿ����ﱾ�λ�����ˡ�", GetName(), nMaxCount));
		return 0;
	end
	--ÿ��ʰȡ����
	
	if( nDate ~= floor(nCollectLimit/512) ) then
		nCollectLimit = nDate * 512
		SetTask(TSK_valentine2008_CollectLimit, nCollectLimit)
	end
	if(mod(nCollectLimit, 512) >= TSKV_valentine2008_CollectDayLimit) then
		Msg2Team(format("%s�������¹ⱦ�д�%d�����Ѿ����������ˣ�����������ɡ�", GetName(), TSKV_valentine2008_CollectDayLimit));
		return 0;
	end
	return 1
end
--�õ��¹ⱦ�У������������
function valentine2008_GetYueGuangBaoHe()
	local nMaxCount		= GetTask(TSK_valentine2008_CollectMaxLimit)
	local nCollectLimit	= GetTask(TSK_valentine2008_CollectLimit)
	local nStackCount	= 10
	local tbItemList	= 
	{
		{szName="������", tbProp={6, 1, 1667, 1, 0, 0}},
		{szName="ԧ����", tbProp={6, 1, 1666, 1, 0, 0}},
	}
	
	SetTask(TSK_valentine2008_CollectLimit, nCollectLimit+1);--����������+1
	nMaxCount = nMaxCount + 1
	SetTask(TSK_valentine2008_CollectMaxLimit, nMaxCount);--������+1
	Msg2Player(format("һ���õ���%d���¹ⱦ�С�", nMaxCount))
	if mod(nMaxCount, nStackCount) == 0 then
		AddSkillState(703, 1, 1, 18*60*10)
		if GetSex() == 0 then --��
			valentine2008_lib_AddAward(tbItemList[2], valentine2008_szActName)
		else
			valentine2008_lib_AddAward(tbItemList[1], valentine2008_szActName)
		end
	end	
end
