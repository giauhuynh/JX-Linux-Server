--Npc死亡脚本
IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\marshal\\head.lua")

ITEM_DROPRATE_TABLE = { 
						{ { 6,1,156,1,0,0 }, { 0.003,0.0200,0.0520,0.0400,0.0500,0.0600 } },	-- 战鼓
						{ { 6,1,157,1,0,0 }, { 0.003,0.0200,0.0520,0.0400,0.0500,0.0600 } },	-- 令旗
						{ { 6,1,158,1,0,0 }, { 0.003,0.0200,0.0300,0.0400,0.0500,0.0600 } },	-- 号角
						{ { 6,1,160,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0376,0.0360 } },	-- 金之战魂
						{ { 6,1,161,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0376,0.0360 } },	-- 木之战魂
						{ { 6,1,162,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0376,0.0360 } },	-- 水之战魂
						{ { 6,1,163,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0376,0.0360 } },	-- 火之战魂
						{ { 6,1,164,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0376,0.0360 } },	-- 土之战魂
						{ { 6,1,165,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0376,0.0120 } },	-- 金之护甲
						{ { 6,1,166,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0376,0.0120 } },	-- 木之护甲
						{ { 6,1,167,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0376,0.0120 } },	-- 水之护甲
						{ { 6,1,168,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0376,0.0120 } },	-- 火之护甲
						{ { 6,1,169,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0376,0.0120 } },	-- 土之护甲
						{ { 6,1,170,1,0,0 }, { 0.002,0.0360,0.0180,0.0390,0.0140,0.0360 } },	-- 金之利刃
						{ { 6,1,171,1,0,0 }, { 0.002,0.0360,0.0180,0.0390,0.0140,0.0360 } },	-- 木之利刃
						{ { 6,1,172,1,0,0 }, { 0.002,0.0360,0.0180,0.0390,0.0140,0.0360 } },	-- 水之利刃
						{ { 6,1,173,1,0,0 }, { 0.002,0.0360,0.0180,0.0390,0.0140,0.0360 } },	-- 火之利刃
						{ { 6,1,174,1,0,0 }, { 0.002,0.0360,0.0180,0.0390,0.0140,0.0360 } },	-- 土之利刃
						{ { 6,1,175,1,0,0 }, { 0.002,0.0200,0.0400,0.0390,0.0140,0.0120 } },	-- 行军丹
						{ { 6,1,176,1,0,0 }, { 0.002,0.0200,0.0400,0.0390,0.0140,0.0120 } },	-- 小还丹
						{ { 6,1,177,1,0,0 }, { 0.002,0.0200,0.0400,0.0390,0.0140,0.0120 } },	-- 五花露
						{ { 6,1,178,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用外普丸
						{ { 6,1,179,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用外毒丸
						{ { 6,1,180,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用外冰丸
						{ { 6,1,181,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用内普丸
						{ { 6,1,182,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用内毒丸
						{ { 6,1,183,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用内冰丸
						{ { 6,1,184,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用内火丸
						{ { 6,1,185,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用内电丸
						{ { 6,1,186,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用长命丸
						{ { 6,1,187,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用加跑丸
						{ { 6,1,188,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用高闪丸
						{ { 6,1,189,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用高中丸
						{ { 6,1,190,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用飞速丸
						{ { 6,1,191,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用普防丸
						{ { 6,1,192,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用冰防丸
						{ { 6,1,193,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用雷防丸
						{ { 6,1,194,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用火防丸
						{ { 6,1,195,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 宋金专用毒防丸
						{ { 6,1,207,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0360 } },	-- 疾风之靴	
						{ { 6,1,209,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0360 } },	-- 白驹护腕	
						{ { 6,1,210,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	-- 后羿之眼	
						{ { 6,1,211,1,0,0 }, { 0.002,0.0200,0.0130,0.0160,0.0140,0.0120 } },	-- 问号
						{ { 6,1,208,1,0,0 }, { 0.002,0.0200,0.0180,0.0160,0.0140,0.0120 } },	--三清之气
						{ { 6,1,212,1,0,0 }, { 0.003,0.0200,0.0150,0.0200,0.0200,0.0200 } },	--信鸽
						{ { 6,1,214,1,0,0 }, { 0.003,0.0200,0.0520,0.0200,0.0200,0.0200 } },	--抗弹之角
					  }
					  
NPC_RANK_DROPRATE_TABLE = { 1, 1, 2, 3, 4, 5 }

PLAYER_BASE_BONUS1 = 1000
PLAYER_BASE_BONUS2 = 500

function OnDeath( nNpcIndex )
	State = GetMissionV(MS_STATE) ;
	if (State ~= 2) then
		return
	end
	
	--如果是死于其它Npc则不统计排行
	if (PlayerIndex == nil or PlayerIndex == 0) then
		return
	end
	
	dropItem( nNpcIndex, rank, PlayerIndex );
	
	BT_SetData(PL_KILLNPC, BT_GetData(PL_KILLNPC) + 1);
	BT_SetData(PL_KILLRANK1 + rank - 1, BT_GetData(PL_KILLRANK1 + rank - 1) + 1);
	bt_addtotalpoint(BT_GetTypeBonus(PL_KILLRANK1 + rank - 1, GetCurCamp()))
	mar_addmissionpoint(BT_GetTypeBonus(PL_KILLRANK1 + rank - 1, GetCurCamp()))
	
	if (rank == 6) then
		if (GetCurCamp() == 1) then
			Msg2MSAll(MISSIONID, "<color=yellow> T鑞g Kim c玭g c竜: T鑞g qu﹏ "..GetName().."  gi誸 頲 Nguy猲 So竔 phe Kim!!!")
			
			--by zero 2007-7-30 如果金方已胜 则选择平局
			
			if(GetMissionV(MS_MARSHALDEATH) == 2 ) then 
				SetMissionV(MS_MARSHALDEATH, 0)--设置胜负
				bonuscff,_=bonus_rate();-- 得到宋方比例
				bonuscff=floor(bonuscff*PLAYER_BASE_BONUS2)--取整数
				bt_addtotalpoint(bonuscff)--加分
				mar_addmissionpoint(bonuscff)--加分
				Msg2Player("B筺 nh薾 頲 "..bonuscff.." 甶觤 t輈h l騳!")
			else
				SetMissionV(MS_MARSHALDEATH, 1);
				bonuscff,_=bonus_rate();-- 得到宋方比例
				bonuscff=floor(bonuscff*PLAYER_BASE_BONUS1)
				bt_addtotalpoint(bonuscff)
				mar_addmissionpoint(bonuscff)
				Msg2Player("B筺 nh薾 頲 "..bonuscff.." 甶觤 t輈h l騳!")
			end
			
			--end
--			CloseMission(MISSIONID) 不立刻结束


		else
			Msg2MSAll(MISSIONID, "<color=yellow> T鑞g Kim c玭g c竜: Kim qu﹏ "..GetName().."  gi誸 頲 Nguy猲 So竔 phe T鑞g!!!")
			
			--by zero 2007-7-30 如果宋方已胜 则选择平局
			if(GetMissionV(MS_MARSHALDEATH) == 1 ) then 
				SetMissionV(MS_MARSHALDEATH, 0)
				_,bonuscff=bonus_rate();--得到金方比例
				bonuscff=floor(bonuscff*PLAYER_BASE_BONUS2)
				bt_addtotalpoint(bonuscff)
				mar_addmissionpoint(bonuscff)
				Msg2Player("B筺 nh薾 頲 "..bonuscff.." 甶觤 t輈h l騳!")
			else
				SetMissionV(MS_MARSHALDEATH, 2);
				_,bonuscff=bonus_rate();--得到金方比例
				bonuscff=floor(bonuscff*PLAYER_BASE_BONUS1)
				bt_addtotalpoint(bonuscff)
				mar_addmissionpoint(bonuscff)
				Msg2Player("B筺 nh薾 頲 "..bonuscff.." 甶觤 t輈h l騳!")
			end
			
	   		--end
--			CloseMission(MISSIONID)
		end
		if (BT_GetGameData(GAME_LEVEL) == 3) then
			TB_QIANQIU_YINGLIE0904:add_rank_award(2);
		end
	end

	BT_SortLadder()
	BT_BroadSelf()
end;

function dropItem( nNpcIndex, nNpcRank, nBelongPlayerIdx )
	local nItemCount = getn( ITEM_DROPRATE_TABLE );
	local nMpsX, nMpsY, nSubWorldIdx = GetNpcPos( nNpcIndex );
	
	for nDropTimes = 1, NPC_RANK_DROPRATE_TABLE[nNpcRank] do
		local nRandNum = random();
		local nSum = 0;
		for i = 1, nItemCount do
			nSum = nSum + ITEM_DROPRATE_TABLE[i][2][nNpcRank];
			if( nSum > nRandNum ) then
				DropItem( nSubWorldIdx, nMpsX, nMpsY, nBelongPlayerIdx, ITEM_DROPRATE_TABLE[i][1][1], ITEM_DROPRATE_TABLE[i][1][2], ITEM_DROPRATE_TABLE[i][1][3], ITEM_DROPRATE_TABLE[i][1][4], ITEM_DROPRATE_TABLE[i][1][5], ITEM_DROPRATE_TABLE[i][1][6], ITEM_DROPRATE_TABLE[i][1][7] );
				break
			end
		end
	end
end