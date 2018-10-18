Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\shuizei\\shuizei.lua");
Include("\\script\\event\\change_destiny\\mission.lua");	-- ÄæÌì¸ÄÃü
SIGNET_DROPCOUNT = 2

Include("\\script\\lib\\awardtemplet.lua")

function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	local maxcount = SIGNET_DROPCOUNT;
	local _, nTongID = GetTongName();
	if (nTongID > 0) then
		if (IsDoubledMoneyBox(nTongID)) then
			maxcount = getSignetDropRate(SIGNET_DROPCOUNT);
		end;
	end;
	local nCurtime = GetCurServerTime() + 7 * 24 *60 * 60
	local nYear = tonumber(FormatTime2String("%Y", nCurtime))
	local nMonth = tonumber(FormatTime2String("%m", nCurtime))
	local nDay = tonumber(FormatTime2String("%d", nCurtime))
	for i = 1, maxcount do
		local nItemIdx = DropItem(world, x, y, PlayerIndex, 6, 0, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		SetSpecItemParam(nItemIdx, 1, nCurtime);
		SetSpecItemParam(nItemIdx, 2, nYear)
		SetSpecItemParam(nItemIdx, 3, nMonth)
		SetSpecItemParam(nItemIdx, 4, nDay)
		SyncItem(nItemIdx);
	end;
	
	if (jf0904_shuizei_IsActtime() == 1) then
		local nItemIdx = DropItem(world, x, y, PlayerIndex, 6,0,11, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		
		local nCurtime = tonumber(GetLocalDate("%H%M"));
		local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		ITEM_SetExpiredTime(nItemIdx, nRestMin);
		SyncItem(nItemIdx);
		
		local nRate = 0.005;
		local nCurRate	= random(100000000)
		if (nCurRate <= 200000000 * nRate) then		
			local x, y, world = GetNpcPos(nNpcIndex);
			local nItemIdx = DropItem(world, x, y, PlayerIndex, 6,0,11, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		end
	end
	tbChangeDestiny:completeMission_WaterThief();
-----------------------------------------------------	
	local tbAward = {
	[1]={{szName="Sao vµng",tbProp={6,1,4355,1,0,0},nCount=50},},
	}
	tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "NhËn phÇn th­ëng tõ Th­¬ng Bu«n"})
	str = "<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· nhËn ®­îc phÇn th­ëng Tiªu diÖt Thñy TÆc §Çu Linh => Phong L¨ng §é"
	AddGlobalCountNews(str, 2)
	Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().." ®· nhËn ®­îc phÇn th­ëng Tiªu diÖt Thñy TÆc §Çu Linh => Phong L¨ng §é nhËn ®­îc 50 sao vµng")
end